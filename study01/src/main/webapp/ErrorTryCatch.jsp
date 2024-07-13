<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>예외처리 - try ~ catch</title>
</head>
<body>
<%
    try {
        int myAge = Integer.parseInt(request.getParameter("age")) + 10;
        out.println("10년 후 당신의 나이는 " + myAge + "입니다.");
    }
    catch (Exception e) {
        out.println("예외 발생 : 매개변수 age가 null입니다.");
    }
%>
</body>
</html>