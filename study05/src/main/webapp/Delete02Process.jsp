<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PreparedStatement로 delete</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String userId = request.getParameter("userId");
%>

<%@ include file="dbConn.jsp" %>

<%
    PreparedStatement pstmt = null;
    String sql = "DELETE FROM member WHERE id = ?";

    try {
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, userId);

        int result = pstmt.executeUpdate();
        out.println(result + "개의 항목을 삭제했습니다.");
    }
    catch (SQLException e) {
        out.println("데이터베이스 삭제 중 오류가 발생했습니다.");
        out.println("SQLException: " + e.getMessage());
    }
    finally {
        try {
            if(pstmt != null) { pstmt.close(); }
            if (conn != null) { conn.close(); }
        }
        catch (Exception e) {
        }
    }
%>
</body>
</html>