<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%@ page import="java.sql.*" %>

<%
    request.setCharacterEncoding("UTF-8");
    // 클라이언트에서 전달된 데이터 가져오기
    String userId = request.getParameter("userId");
%>

<%-- DB 접속 정보 가져오기--%>
<%@ include file="dbConn.jsp"%>

<%
    // sql 쿼리문을 데이터베이스로 전달하는 Statement 클래스의 변수 생성
    Statement stmt = null;
    // sql delete 쿼리문 작성
    String sql = "DELETE FROM member WHERE id = '" + userId + "' ";

    try {
        // Statement 클래스 타입의 객체 생성
        stmt = conn.createStatement();
        // executeUpdate()를 호출하여 sql 문을 데이터베이스로 전달
        int result = stmt.executeUpdate(sql);
        out.println(result + "개의 항목을 삭제했습니다.");
    }
    catch (SQLException e) {
        out.println("데이터베이스 삭제 중 오류가 발생했습니다.");
        out.println("SQLException : " + e.getMessage());
    }
    finally {
        try {
            if (stmt != null) { stmt.close(); }
            if (conn != null) { conn.close(); }
        }
        catch (Exception e) {}
    }
%>