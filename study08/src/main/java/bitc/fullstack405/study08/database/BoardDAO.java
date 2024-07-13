package bitc.fullstack405.study08.database;

import jakarta.servlet.ServletContext;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

// 데이터베이스의 board 테이블의 정보를 컨트롤하기 위한 클래스
// 데이터베이스 접속 정보 및 연결 메서드를 JDBConnect 클래스에서 상속받음
public class BoardDAO extends JDBConnect {
    public BoardDAO() {
        super();
    }

    public BoardDAO(ServletContext app) {
        super(app);
    }

    public BoardDAO(String dbDriver, String dbUrl, String dbUser, String dbPass) {
        super(dbDriver, dbUrl, dbUser, dbPass);
    }

    // 게시판 글 목록 조회 메서드
    public List<BoardDTO> selectBoardList() {
        List<BoardDTO> boardList = new ArrayList<BoardDTO>();

        try {
            String sql  = "SELECT num, title, id, postdate, visitcount FROM board ";

            stmt = conn.createStatement(); // 쿼리문 생성
            rs = stmt.executeQuery(sql); // 쿼리 실행

            while (rs.next()) {
                // 한 행(게시물 하나)의 내용을 DTO에 저장
                BoardDTO board = new BoardDTO();
                
                int num = rs.getInt("num"); // 일련번호
                String title = rs.getString("title"); // 제목
                String id = rs.getString("id"); // 작성자 아이디
                String postdate = rs.getString("postdate"); // 작성일
                int visitCount = rs.getInt("visitcount"); // 조회수
                
                board.setNum(num);
                board.setTitle(title);
                board.setId(id);
                board.setPostDate(postdate);
                board.setVisitCount(visitCount);

                boardList.add(board); // 결과 목록에 저장
            }
        }
        catch (SQLException e) {}
        finally {
            try {}
            catch (Exception e) {}
        }

        return boardList;
    }

    // 게시판 글 조회 메서드
    public BoardDTO selectBoardDetail(int num) {
        BoardDTO board = new BoardDTO();

        try {
            String sql = "SELECT num, title, content, id, postdate, visitcount ";
            sql += "FROM board ";
            sql += "WHERE num = ? ";

            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, num);

            rs = pstmt.executeQuery();

            if (rs.next()) {
                board.setNum(rs.getInt("num"));
                board.setTitle(rs.getString("title"));
                board.setContent(rs.getString("content"));
                board.setId(rs.getString("id"));
                board.setPostDate(rs.getString("postdate"));
                board.setVisitCount(rs.getInt("visitcount"));
            }
        }
        catch (SQLException e) {
            System.out.println("데이터베이스 조회 중 오류가 발생했습니다.");
            e.printStackTrace();
        }
        finally {
            try {
                if (rs != null) { rs.close(); }
                if (pstmt != null) { pstmt.close(); }
                if (conn != null) { conn.close(); }
            }
            catch (Exception e) {}
        }

        return board;
    }

    // 게시판 글 등록 메서드
    public int insertBoard(BoardDTO board) {
        int result = 0;

        try {
            String sql = "INSERT INTO board (title, content, id, postdate) ";
            sql += "VALUES (?, ?, ?, now()) ";

            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, board.getTitle());
            pstmt.setString(2, board.getContent());
            pstmt.setString(3, board.getId());

            result = pstmt.executeUpdate();
        }
        catch (SQLException e) {
            System.out.println("데이터베이스에 데이터 추가 중 오류가 발생했습니다.");
            e.printStackTrace();
        }
        finally {
            try {
                if (pstmt != null) { pstmt.close(); }
                if (conn != null) { conn.close(); }
            }
            catch (Exception e) {}
        }

        return result;
    }

    // 게시판 글 수정 메서드
    public int updateBoard(BoardDTO board) {
        int result = 0;

        try {
            String sql = "UPDATE board ";
            sql += "SET title = ?, content = ?, postdate = now() ";
            sql += "WHERE num = ? ";

            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, board.getTitle());
            pstmt.setString(2, board.getContent());
            pstmt.setInt(3, board.getNum());

            result = pstmt.executeUpdate();
        }
        catch (SQLException e) {
            System.out.println("데이터베이스 수정 중 오류가 발생했습니다.");
            e.printStackTrace();
        }
        finally {
            try {
                if (pstmt != null) { pstmt.close(); }
                if (conn != null) { conn.close(); }
            }
            catch (Exception e) {}
        }

        return result;
    }

    // 게시판 글 삭제 메서드
    public int deleteBoard(int num) {
        int result = 0;

        try {
            String sql = "DELETE FROM board WHERE num = " + num + " ";
            stmt = conn.createStatement();
            result = stmt.executeUpdate(sql);
        }
        catch (SQLException e) {
            System.out.println("데이터베이스에서 삭제 중 오류가 발생했습니다.");
            e.printStackTrace();
        }
        finally {
            try {
                if (stmt != null) { stmt.close(); }
                if (conn != null) { conn.close(); }
            }
            catch (Exception e) {}
        }

        return result;
    }

    // 조회수 1 증가시키는 메서드
    public void updateVisitCount(int num) {
        try {
            String sql = "UPDATE board SET ";
            sql += "visitcount=visitcount+1 ";
            sql += "WHERE num=? ";

            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, Integer.toString(num));
            pstmt.execute();
        }
        catch (SQLException e) {
            System.out.println("게시물 조회수 증가 중 오류가 발생했습니다.");
            e.printStackTrace();
        }
        finally {
            try {
                if (pstmt != null) { pstmt.close(); }
                if (conn != null) { conn.close(); }
            }
            catch (Exception e) {}
        }
    }
}