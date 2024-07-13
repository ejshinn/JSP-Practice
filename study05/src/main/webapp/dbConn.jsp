<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%@ page import="java.sql.*" %>

<%
    Connection conn = null;

    String dbUrl = "jdbc:mysql://localhost:3306/testdb1?characterEncoding=utf-8&serverTimezone=UTC";
    String dbUser = "test1";
    String dbPass = "full405";

    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);
%>