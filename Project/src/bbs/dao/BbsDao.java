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
	
	
	//작성자 검색메소드
		public List<BbsDto> getListT(BbsDto dto){
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
						+ "      FROM (SELECT num,title,content,writer,regdate"
						+ "            FROM bbs"
						+ "            WHERE title LIKE '%'||?||'%'"
						+ "            ORDER BY regdate DESC) result1)"
						+ " WHERE rnum BETWEEN ? AND ?";
				pstmt = conn.prepareStatement(sql);
				//sql 문에 ? 에 바인딩할 값이 있으면 바인딩하고 
				pstmt.setString(1, dto.getTitle());
				pstmt.setInt(2, dto.getStartRowNum());
				pstmt.setInt(3, dto.getEndRowNum());
				//select 문 수행하고 결과 받아오기 
				rs = pstmt.executeQuery();
				// 결과 값 추출하기 
				while (rs.next()) {
					BbsDto tmp=new BbsDto();
					tmp.setNum(rs.getInt("num"));
					tmp.setTitle(rs.getString("title"));
					tmp.setContent(rs.getString("content"));
					tmp.setRegdate(rs.getString("regdate"));
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
	
	//작성자 검색메소드
	public List<BbsDto> getListW(BbsDto dto){
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
					+ "      FROM (SELECT num,title,content,writer,regdate"
					+ "            FROM bbs"
					+ "            WHERE writer LIKE '%'||?||'%'"
					+ "            ORDER BY regdate DESC) result1)"
					+ " WHERE rnum BETWEEN ? AND ?";
			pstmt = conn.prepareStatement(sql);
			//sql 문에 ? 에 바인딩할 값이 있으면 바인딩하고 
			pstmt.setString(1, dto.getWriter());
			pstmt.setInt(2, dto.getStartRowNum());
			pstmt.setInt(3, dto.getEndRowNum());
			//select 문 수행하고 결과 받아오기 
			rs = pstmt.executeQuery();
			// 결과 값 추출하기 
			while (rs.next()) {
				BbsDto tmp=new BbsDto();
				tmp.setNum(rs.getInt("num"));
				tmp.setTitle(rs.getString("title"));
				tmp.setContent(rs.getString("content"));
				tmp.setRegdate(rs.getString("regdate"));
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