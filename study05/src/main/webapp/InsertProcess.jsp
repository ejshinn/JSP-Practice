<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%@ page import="java.sql.*" %>

<%@ include file="dbConn.jsp"%>

<%
    // 문자셋 설정
    request.setCharacterEncoding("UTF-8");
    // 클라이언트에서 전달된 데이터 가져오기
    String userId = request.getParameter("userId");
    String userPw = request.getParameter("userPw");
    String userName = request.getParameter("userName");

    // Statement : 데이터베이스 서버로 sql 쿼리문을 전달하는 클래스
    Statement stmt = null;

    try {
        // sql 쿼리문 생성
        String sql = "insert into member (id, pass, name, regidate) ";
        sql += "values ('" + userId + "', '" + userPw + "', '" + userName + "', now()) ";

        // Connection 클래스 타입의 객체 conn을 통해서 createStatement()를 호출하여 Statement 객체를 생성
        stmt = conn.createStatement();
        // Statement 클래스 타입의 객체를 통해서 sql 쿼리문을 데이터베이스에 전달하여 실행
        int result = stmt.executeUpdate(sql);
        out.println("회원가입 성공");
    }
    catch (SQLException e) {
        out.println("회원가입 실패");
        out.println("SQLException : " + e.getMessage());
    }
    finally {
        // 데이터베이스가 외부 리소스이기 때문에 반드시 finally를 통해서 사용한 리소스를 닫아줘야 함
        // Statement > Connection 순서로 리소스를 닫아줘야 함
        if (stmt != null) { stmt.close(); }
        if (conn != null) { conn.close(); }
    }
%>