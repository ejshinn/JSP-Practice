<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <title>내장 객체의 영역</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">chap03 내장 객체의 영역(Scope)</h2>

        <ul class="list-group">
            <li class="list-group-item"><a href="PageContextMain.jsp" target="_blank" class="btn btn-link">page 영역</a></li>
            <li class="list-group-item"><a href="RequestMain.jsp" target="_blank" class="btn btn-link">request 영역</a></li>
            <li class="list-group-item"><a href="SessionMain.jsp" target="_blank" class="btn btn-link">session 영역</a></li>
            <li class="list-group-item"><a href="ApplicationMain.jsp" target="_blank" class="btn btn-link">application 영역</a></li>
        </ul>
    </div>
</body>
</html>