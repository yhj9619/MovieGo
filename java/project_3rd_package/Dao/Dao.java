package project_3rd_package.Dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import jspexp.a05_th_member.vo.Member;
import project_3rd_package.vo.*;

public class Dao {
	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs; 
	// 2. 공통 메서드 선언(setConn())
	public void setConn() throws SQLException {
		// 1) 드라이버 연결
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("예외 처리:"+e.getMessage());
		}
		// 2) 특정 서버 연결
		String info = "jdbc:oracle:thin:@localhost:1521:xe";
		con = DriverManager.getConnection(info,"scott","tiger");
		System.out.println("접속 성공");
	}
	void closeRsc() {
		if(rs!=null) { 
			try {
				rs.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} 
		}
		if(pstmt!=null) { 
			try {
				pstmt.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} 
		}		
		if(stmt!=null) { 
			try {
				stmt.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} 
		}
		if(con!=null) { 
			try {
				con.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} 
		}		
	}
	
	public Member login(String id, String pass) {
		// 리턴할 객체 선언.
		
		Member m = null;
		// 1. 연결공통메서드 호출
		String sql = "select * \r\n"
				+ "from member \r\n"
				+ "where id=? and pass = ? ";
		try {
			setConn();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			rs = pstmt.executeQuery();
			if( rs.next() ) {
				m = new Member(rs.getString("id"), rs.getString("pass"), 
						rs.getString("name"), rs.getString("nickname"),
						rs.getString("grade"),rs.getInt("point"),
						rs.getString("intro"));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			// 6. 예외 처리..
			System.out.println(e.getMessage());
			closeRsc();
		}
		return m;
	}	
	
	public void insertMember(Member ins) {
		String sql = "INSERT INTO MEMBER values(?,?,?,?,?,?,?)";
		try {
			setConn();
			con.setAutoCommit(false);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, ins.getId());
			pstmt.setString(2, ins.getPass());
			pstmt.setString(3, ins.getName());
			pstmt.setString(4, ins.getNickname());
			pstmt.setString(5, ins.getGrade());
			pstmt.setInt(6, ins.getPoint());
			pstmt.setString(7, ins.getIntro());
			pstmt.executeUpdate();
			con.commit();
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			// 6. 예외 처리..
			System.out.println(e.getMessage());
			closeRsc();
			
			
		}finally {
			System.out.println("등록 처리 완료!!");
		}

	}	
	
/* 
   public ArrayList<CriticBoard> boardList() {
      ArrayList<CriticBoard> boardList = new ArrayList<CriticBoard>();
      try {
         setConn();
         stmt = con.createStatement();
         String sql = "SELECT * FROM criticBoard";

         // 결과 객체
         rs = stmt.executeQuery(sql);

         // while문
         int num = 1;
         while (rs.next()) {
//            private int boardNum;
//            private String title;
//            private String name;
//            private int dates;
//            private int hits;
//            private int recommend;
//            private String content;
        	 //int boardNum, String boardTitle, Date boardRegiDate, int boardHits, int boardLike,String boardContent
 			
        	 
        	CriticBoard b = new CriticBoard(rs.getInt("boardNum"), rs.getString("boardTitle"),  rs.getDate("boardRegiDate"), rs.getInt("boardHits"), rs.getInt("boardLike"), rs.getString("boardContent"),rs.getString("boardUser"));
            boardList.add(b);
            System.out.println("제목 : "+rs.getString("boardTitle"));
         
         }

         // 자원 해제
         rs.close();
         stmt.close();
         con.close();
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
         System.out.println(e.getMessage());
         if (rs != null) {
            rs = null;
         }
         if (stmt != null) {
            stmt = null;
         }
         if (con != null) {
            con = null;
         }
      }
      return boardList;
   }
   
   public ArrayList<String> getTitle() {
      ArrayList<String> boardList = new ArrayList<String>();
      try {
         setConn();
         stmt = con.createStatement();
         String sql = "SELECT title FROM board";

         // 결과 객체
         rs = stmt.executeQuery(sql);

         // while문
         int num = 1;
         while (rs.next()) {
//            private int boardNum;
//            private String title;
//            private String name;
//            private int dates;
//            private int hits;
//            private int recommend;
//            private String content;
            boardList.add(rs.getString(1));
         }

         // 자원 해제
         rs.close();
         stmt.close();
         con.close();
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
         System.out.println(e.getMessage());
         if (rs != null) {
            rs = null;
         }
         if (stmt != null) {
            stmt = null;
         }
         if (con != null) {
            con = null;
         }
      }
      return boardList;
   }
   
   // 등록
   public void insertboard(CriticBoard cb) {
	   //INSERT INTO criticBoard values(1,'스파이더맨: 노 웨이 홈 (쿠키, 베놈, 삼스파)',sysdate,50,3,'리뷰','필름닷');
		String sql = "INSERT INTO criticBoard VALUES ("+cb.getBoardNum()+"','"+cb.getBoardTitle()+"','"
				+cb.getBoardRegiDate()+"','"+cb.getBoardHits()+"','"+cb.getBoardLike()+","
		+cb.getBoardContent()+","+cb.getBoardUser()+")";
		try {
			setConn();
			// 자동커밋 방지
			con.setAutoCommit(false);
			stmt = con.createStatement();
			stmt.executeUpdate(sql);
			con.commit();
			// 자원해제
			stmt.close(); con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			// 예외시 rollback 처리
			try {
				con.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
				if (rs != null) {
		            rs = null;
		         }
		         if (stmt != null) {
		            stmt = null;
		         }
		         if (con != null) {
		            con = null;
		         }
			}
			
		}
		
		
	}
*/
   public static void main(String[] args) {
      // TODO Auto-generated method stub

      Dao d1 = new Dao();
      d1.insertMember(new Member("higirl","6666","김민지","밍지","일반 사용자",0,"ㅎㅇㅎㅇ"));

   }

}