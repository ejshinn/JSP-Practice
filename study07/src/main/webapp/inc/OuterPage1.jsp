<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OuterPage1</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
    <div>
        <h2>외부 파일 1</h2>
        <%
            // OuterPage1.jsp에서 선언한 변수
            String newVal1 = "고구려 세운 동명왕";
        %>

        <ul class="list-group">
            <%-- IncludeMain.jsp 파일의 page 영역에 저장된 데이터 가져오기 --%>
            <li class="list-group-item">page 영역 속성 : <%=pageContext.getAttribute("pAttr")%></li>
            <%-- IncludeMain.jsp 파일의 request 영역에 저장된 데이터 가져오기--%>
            <li class="list-group-item">request 영역 속성 : <%=request.getAttribute("rAttr")%></li>
        </ul>
    </div>
</body>
</html>