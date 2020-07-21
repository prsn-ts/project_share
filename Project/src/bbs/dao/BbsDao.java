package bbs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bbs.dto.BbsDto;
import test.util.DbcpBean;

public class BbsDao {
	private static BbsDao dao;
	private BbsDao() {}
	public static BbsDao getInstance() {
		if(dao==null) {
			dao=new BbsDao();
		}
		return dao;
	}
	
	//전체 row 의 갯수를 리턴해주는 메소드
	public int getCount() {
		//전체 row  의 갯수를 담을 지역 변수 
		int count=0;
		//필요한 객체의 참조값을 담을 지역변수 만들기 
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			//Connection 객체의 참조값 얻어오기 
			conn = new DbcpBean().getConn();
			//ROWNUM 중에서 가장 큰 숫자를 얻어오면 전체 row  의 갯수가 된다. 
			//혹시 row 가 하나도 없으면 null 이 얻어와 지기때문에  null 인 경우 0 으로 
			//바꿔 줘야 한다.
			String sql = "SELECT NVL(MAX(ROWNUM), 0) AS bbsID"
					+ " FROM BBS";
			pstmt = conn.prepareStatement(sql);
			//sql 문에 ? 에 바인딩할 값이 있으면 바인딩하고 

			//select 문 수행하고 결과 받아오기 
			rs = pstmt.executeQuery();
			//결과 값 추출하기 
			if (rs.next()) {
				count=rs.getInt("bbsID");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		return count;
	}
	
	//인자로 전달되는 파일 번호에 해당하는 파일 정보를 리턴하는 메소드
	public BbsDto getData(int bbsID) {
		
		BbsDto dto=null;
		//필요한 객체의 참조값을 담을 지역변수 만들기 
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			//Connection 객체의 참조값 얻어오기 
			conn = new DbcpBean().getConn();
			//실행할 sql 문 준비하기
			String sql = "SELECT SELECT bbsTitle,id,bbsDate,bbsContent"
					+ " FROM BBS"
					+ " WHERE bbsID=?";
			pstmt = conn.prepareStatement(sql);
			//sql 문에 ? 에 바인딩할 값이 있으면 바인딩하고 
			pstmt.setInt(1, bbsID);
			//select 문 수행하고 결과 받아오기 
			rs = pstmt.executeQuery();
			//결과 값 추출하기 
			if(rs.next()) {
				dto=new BbsDto();
				dto.setBbsID(bbsID);
				dto.setBbsTitle(rs.getString("bbsTitle"));
				dto.setId(rs.getString("id"));
				dto.setBbsDate(rs.getString("bbsDate"));
				dto.setBbsContent(rs.getString("bbsContent"));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		return dto;
	}
	
	
	//목록을 리턴해주는 메소드
	public List<BbsDto> getList(BbsDto dto){
		List<BbsDto> list=new ArrayList<>();
		//필요한 객체의 참조값을 담을 지역변수 만들기 
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			//Connection 객체의 참조값 얻어오기 
			conn = new DbcpBean().getConn();
			//실행할 sql 문 준비하기
			String sql = "SELECT *"
					+ " FROM"
					+ "     (SELECT result1.*, ROWNUM AS rnum"
					+ "      FROM (SELECT bbsID,bbsTitle,id,bbsDate,bbsContent"
					+ "            FROM BBS"
					+ "            ORDER BY bbsID DESC) result1)"
					+ " WHERE rnum BETWEEN ? AND ?";
			pstmt = conn.prepareStatement(sql);
			//sql 문에 ? 에 바인딩할 값이 있으면 바인딩하고 
			pstmt.setInt(1, dto.getStartRowNum());
			pstmt.setInt(2, dto.getEndRowNum());
			//select 문 수행하고 결과 받아오기 
			rs = pstmt.executeQuery();
			// 결과 값 추출하기 
			while (rs.next()) {
				BbsDto tmp=new BbsDto();
				tmp.setBbsID(rs.getInt("bbsID"));
				tmp.setBbsTitle(rs.getString("bbsTitle"));
				tmp.setId(rs.getString("id"));
				tmp.setBbsDate(rs.getString("bbsDate"));
				tmp.setBbsContent("bbsContent");
				//ArrayList 객체에 누적 시킨다. 
				list.add(tmp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		return list;
	}
	
	//파일 정보를 DB 에 저장하는 메소드
	public boolean insert(BbsDto dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			//실행할 sql 문 준비하기 
			String sql = "INSERT INTO bbs"
					+ " (num,title,content,writer,regdate)"
					+ " VALUES(BBS_seq.NEXTVAL, ?, ?,?, SYSDATE)";
			pstmt = conn.prepareStatement(sql);
			//? 에 바인딩 할 값이 있으면 바인딩한다.
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getContent());
			pstmt.setString(3, dto.getWriter());
			//sql  문 수행하고 update or insert or delete 된 row 의 갯수 리턴받기 
			flag = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		if (flag > 0) {
			return true;
		} else {
			return false;
		}
	}
}