<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>exception 객체</title>
</head>
<body>
<%
    int myAge = Integer.parseInt(request.getParameter("age")) + 10;
    out.println("10년 후 당신의 나이는 " + myAge + "입니다.");
%>
</body>
</html>