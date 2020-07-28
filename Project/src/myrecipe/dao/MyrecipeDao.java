package myrecipe.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bbs.dto.BbsDto;
import myrecipe.dto.MyrecipeDto;
import test.util.DbcpBean;

public class MyrecipeDao {
	private static MyrecipeDao dao;
	private MyrecipeDao() {}
	public static MyrecipeDao getInstance() {
		if(dao==null) {
			dao=new MyrecipeDao();
		}
		return dao;
	}
	//회원 한명의 글쓰기 정보를 가져오는 메소드
	public MyrecipeDto getWriteData(String writer) {
		//글하나의 정보를 담을 BoardDto 
		MyrecipeDto dto=null;
		//필요한 객체의 참조값을 담을 지역변수 만들기 
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		System.out.println(writer);
		try {
			//Connection 객체의 참조값 얻어오기 
			conn = new DbcpBean().getConn();
			//실행할 sql 문 준비하기
			String sql = "SELECT mr.num, log.id, mr.title, mr.subTitle, mr.content, mr.writer, mr.regdate, mr.imagePath, mr.showImage, mr.viewCount"
					+ " FROM my_recipe mr, login log"
					+ " WHERE mr.writer(+) = log.id AND id = ?";
			pstmt = conn.prepareStatement(sql);
			//sql 문에 ? 에 바인딩할 값이 있으면 바인딩하고
			pstmt.setString(1, writer);
			//select 문 수행하고 결과 받아오기 
			rs = pstmt.executeQuery();
			//결과 값 추출하기 
			if (rs.next()) {
				dto=new MyrecipeDto();
				dto.setNum(rs.getInt("num"));
				dto.setTitle(rs.getString("title"));
				dto.setSubTitle(rs.getString("subTitle"));
				dto.setContent(rs.getString("content"));
				dto.setWriter(rs.getString("writer"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setImagePath(rs.getString("imagePath"));
				dto.setShowImage(rs.getString("showImage"));
				dto.setViewCount(rs.getInt("viewCount"));
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
	
	//글 하나의 정보를 삭제하는 메소드
	public boolean delete(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			//실행할 sql 문 준비하기 
			String sql = "DELETE FROM bbs_cafe"
					+ " WHERE num=?";
			pstmt = conn.prepareStatement(sql);
			//? 에 바인딩 할 값이 있으면 바인딩한다.
			pstmt.setInt(1, num);
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
	
	//글 정보를 수정하는 메소드
	public boolean update(BbsDto dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			String sql = "UPDATE bbs_cafe"
					+ " SET title=?, content=?"
					+ " WHERE num=?";
			pstmt = conn.prepareStatement(sql);
			// ? 에 값 바인딩 하기
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getContent());
			pstmt.setInt(3, dto.getNum());
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
	
	//글 조회수 1 증가 시키는 메소드
	public boolean addViewCount(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			String sql = "UPDATE bbs_cafe"
					+ " SET viewCount=viewCount+1"
					+ " WHERE num=?";
			pstmt = conn.prepareStatement(sql);
			// ? 에 값 바인딩 하기
			pstmt.setInt(1, num);
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
	
	//글 하나의 정보를 리턴하는 메소드
	public BbsDto getData(int num) {
		//글하나의 정보를 담을 BoardDto 
		BbsDto dto=null;
		//필요한 객체의 참조값을 담을 지역변수 만들기 
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			//Connection 객체의 참조값 얻어오기 
			conn = new DbcpBean().getConn();
			//실행할 sql 문 준비하기
			String sql = "SELECT result1.*"
					+ " FROM"
					+ "     (SELECT num,writer,title,content,regdate,viewCount,"
					+ "      LAG(num,1,0) OVER (ORDER BY num DESC) AS prevNum,"
					+ "      LEAD(num,1,0) OVER (ORDER BY num DESC) AS nextNum"
					+ "      FROM bbs_cafe) result1"
					+ " WHERE num=?";
			pstmt = conn.prepareStatement(sql);
			//sql 문에 ? 에 바인딩할 값이 있으면 바인딩하고 
			pstmt.setInt(1, num);
			//select 문 수행하고 결과 받아오기 
			rs = pstmt.executeQuery();
			//결과 값 추출하기 
			if (rs.next()) {
				dto=new BbsDto();
				dto.setNum(num);
				dto.setWriter(rs.getString("writer"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setRegdate(rs.getString("regdate"));
				dto.setViewCount(rs.getInt("viewCount"));
				dto.setPrevNum(rs.getInt("prevNum"));
				dto.setNextNum(rs.getInt("nextNum"));
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
	
	//타이틀 검색결과  row 의 갯수를 리턴해주는 메소드
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
			String sql = "SELECT NVL(MAX(ROWNUM), 0) AS num"
					+ " FROM bbs_cafe";
			pstmt = conn.prepareStatement(sql);
			//sql 문에 ? 에 바인딩할 값이 있으면 바인딩하고 

			//select 문 수행하고 결과 받아오기 
			rs = pstmt.executeQuery();
			//결과 값 추출하기 
			if (rs.next()) {
				count=rs.getInt("num");
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
	
	//타이틀,내용 검색결과  row 의 갯수를 리턴해주는 메소드
	public int getCountTC(BbsDto dto) {
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
			String sql = "SELECT NVL(MAX(ROWNUM), 0) AS num"
					+ " FROM bbs_cafe"
					+ " WHERE title LIKE '%'||?||'%' OR content LIKE '%'||?||'%'";
			pstmt = conn.prepareStatement(sql);
			//sql 문에 ? 에 바인딩할 값이 있으면 바인딩하고 
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getContent());
			//select 문 수행하고 결과 받아오기 
			rs = pstmt.executeQuery();
			//결과 값 추출하기 
			if (rs.next()) {
				count=rs.getInt("num");
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
	
	//타이틀 검색결과  row 의 갯수를 리턴해주는 메소드
	public int getCountT(BbsDto dto) {
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
			String sql = "SELECT NVL(MAX(ROWNUM), 0) AS num"
					+ " FROM bbs_cafe"
					+ " WHERE title LIKE '%'||?||'%'";
			pstmt = conn.prepareStatement(sql);
			//sql 문에 ? 에 바인딩할 값이 있으면 바인딩하고 
			pstmt.setString(1, dto.getTitle());
			//select 문 수행하고 결과 받아오기 
			rs = pstmt.executeQuery();
			//결과 값 추출하기 
			if (rs.next()) {
				count=rs.getInt("num");
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
	
	//작성자 검색결과  row 의 갯수를 리턴해주는 메소드
	public int getCountW(BbsDto dto) {
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
			String sql = "SELECT NVL(MAX(ROWNUM), 0) AS num"
					+ " FROM bbs_cafe"
					+ " WHERE writer LIKE '%'||?||'%'";
			pstmt = conn.prepareStatement(sql);
			//sql 문에 ? 에 바인딩할 값이 있으면 바인딩하고 
			pstmt.setString(1, dto.getWriter());
			//select 문 수행하고 결과 받아오기 
			rs = pstmt.executeQuery();
			//결과 값 추출하기 
			if (rs.next()) {
				count=rs.getInt("num");
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
	
	//게시판 목록을 리턴해주는 메소드
		public List<BbsDto> getList(BbsDto dto){
			//파일 목록을 담을 ArrayList  객체 생성 
			List<BbsDto> list=new ArrayList<>();
			//필요한 객체의 참조값을 담을 지역변수 만들기 
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				//Connection 객체의 참조값 얻어오기 
				conn = new DbcpBean().getConn();
				//실행할 sql 문 준비하기
				String sql="SELECT *"
						+ " FROM"
						+ " (SELECT result1.*, ROWNUM AS rnum"
						+ " FROM"
						+ " (SELECT num,writer,title,regdate,viewCount"
						+ " FROM bbs_cafe"
						+ " ORDER BY num DESC) result1)"
						+ " WHERE rnum BETWEEN ? AND ?";
				pstmt = conn.prepareStatement(sql);
				//sql 문에 ? 에 바인딩할 값이 있으면 바인딩하고 
				pstmt.setInt(1, dto.getStartRowNum());
				pstmt.setInt(2, dto.getEndRowNum());
				//select 문 수행하고 결과 받아오기 
				rs = pstmt.executeQuery();
				//반복문 돌면서 결과 값 추출하기 
				while (rs.next()) { 
					BbsDto tmp=new BbsDto();
					tmp.setNum(rs.getInt("num"));
					tmp.setWriter(rs.getString("writer"));
					tmp.setTitle(rs.getString("title"));
					tmp.setRegdate(rs.getString("regdate"));
					tmp.setViewCount(rs.getInt("viewCount"));
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
	
	//타이틀, 내용을 리턴해주는 메소드
	public List<BbsDto> getListTC(BbsDto dto){
		//파일 목록을 담을 ArrayList  객체 생성 
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
					+ "      FROM (SELECT num,title,content,writer,regdate,viewCount"
					+ "            FROM bbs_cafe"
					+ "            WHERE title LIKE '%'||?||'%' OR content LIKE '%'||?||'%'"
					+ "            ORDER BY num DESC) result1)"
					+ " WHERE rnum BETWEEN ? AND ?";
			pstmt = conn.prepareStatement(sql);
			//sql 문에 ? 에 바인딩할 값이 있으면 바인딩하고 
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getContent());
			pstmt.setInt(2, dto.getStartRowNum());
			pstmt.setInt(3, dto.getEndRowNum());
			//select 문 수행하고 결과 받아오기 
			rs = pstmt.executeQuery();
			//반복문 돌면서 결과 값 추출하기 
			while (rs.next()) { 
				BbsDto tmp=new BbsDto();
				tmp.setNum(rs.getInt("num"));
				tmp.setTitle(rs.getString("title"));
				tmp.setContent(rs.getString("content"));
				tmp.setWriter(rs.getString("writer"));
				tmp.setRegdate(rs.getString("regdate"));
				dto.setViewCount(rs.getInt("viewCount"));
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
	
	//타이틀 검색메소드
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
						+ "      FROM (SELECT num,title,content,writer,regdate,viewCount"
						+ "            FROM bbs_cafe"
						+ "            WHERE title LIKE '%'||?||'%'"
						+ "            ORDER BY num DESC) result1)"
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
					tmp.setWriter(rs.getString("writer"));
					tmp.setRegdate(rs.getString("regdate"));
					tmp.setViewCount(rs.getInt("viewCount"));
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
					+ "      FROM (SELECT num,title,content,writer,regdate,viewCount"
					+ "            FROM bbs_cafe"
					+ "            WHERE writer LIKE '%'||?||'%'"
					+ "            ORDER BY num DESC) result1)"
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
				tmp.setWriter(rs.getString("writer"));
				tmp.setRegdate(rs.getString("regdate"));
				tmp.setViewCount(rs.getInt("viewCount"));
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
	
	//게시글 정보를 DB 에 저장하는 메소드
	public boolean insert(MyrecipeDto dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			//실행할 sql 문 준비하기 
			String sql = "INSERT INTO my_recipe"
					+ " (num,title,subTitle,content,writer,regdate,imagePath,showImage,viewCount)"
					+ " VALUES(bbs_cafe_seq.NEXTVAL, ?, ?, ?, ?, SYSDATE, ?, ?, 0)";
			pstmt = conn.prepareStatement(sql);
			//? 에 바인딩 할 값이 있으면 바인딩한다.
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getSubTitle());
			pstmt.setString(3, dto.getContent());
			pstmt.setString(4, dto.getWriter());
			pstmt.setString(5, dto.getImagePath());
			pstmt.setString(6, dto.getShowImage());
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