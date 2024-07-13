<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>기본 예외 발생</title>
</head>
<body>
<%
    int myAge = Integer.parseInt(request.getParameter("age")) + 10; // 에러 발생
    out.println("10년 후 당신의 나이는 " + myAge + "입니다."); // 실행되지 않음
%>
</body>
</html>