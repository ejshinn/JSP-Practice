<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>

<%@ page import="bitc.fullstack405.study03.dto.Person" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>application 영역</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
    <div class="container mt-5">
        <h2>application 영역의 공유</h2>
        <%
            // HashMap 타입의 데이터 생성
            Map<String, Person> maps = new HashMap<>();
            maps.put("actor1", new Person("짱구", 5));
            maps.put("actor2", new Person("봉미선", 29));

            // application 영역에 데이터 저장
            application.setAttribute("maps", maps);
        %>

        <a href="ApplicationResult.jsp" target="_blank" class="btn btn-link">ApplicationResult 페이지로 이동</a>
    </div>
</body>
</html>