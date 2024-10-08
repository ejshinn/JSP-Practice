<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>JSP 기본</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">chap01 JSP 기본</h2>
        <ul class="list-group">
            <li class="list-group-item"><a href="Import.jsp" target="_blank" class="btn btn-link">page 지시어 - import</a></li>
            <li class="list-group-item"><a href="Error500.jsp" target="_blank" class="btn btn-link">기본 예외 발생</a></li>
            <li class="list-group-item"><a href="ErrorTryCatch.jsp" target="_blank" class="btn btn-link">예외처리 - try ~ catch</a></li>
            <li class="list-group-item"><a href="ErrorPage.jsp" target="_blank" class="btn btn-link">page 지시어 - errorPage, isErrorPage</a></li>
            <li class="list-group-item"><a href="TrimWhiteSpace.jsp" target="_blank" class="btn btn-link">page 지시어 - trimDirectiveWhitespaces</a></li>
            <li class="list-group-item"><a href="AutoFlush.jsp" target="_blank" class="btn btn-link">page 지시어 - autoFlush</a></li>
            <li class="list-group-item"><a href="IncludeMain.jsp" target="_blank" class="btn btn-link">include 지시어</a></li>
            <li class="list-group-item"><a href="ScriptElements.jsp" target="_blank" class="btn btn-link">jsp script 사용하기</a></li>
        </ul>
    </div>
</body>
</html>