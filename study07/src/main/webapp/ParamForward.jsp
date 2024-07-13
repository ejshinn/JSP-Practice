<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>액션 태그 param</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
    <%-- useBean 액션태그로 Person 클래스 타입의 객체를 request 영역에서 가져옴 --%>
    <%-- scope="request"로 설정되어 있어 forwrard를 통해서 페이지 이동이 되었을 경우 이전 페이지에서 생성한 Person 클래스 타입의 객체를 가져옴 --%>
    <jsp:useBean id="person" class="bitc.fullstack405.study07.Person" scope="request"></jsp:useBean>

    <div class="container mt-5">
        <h2 class="text-center">forward된 페이지에서 매개변수 확인</h2>
        <ul class="list-group">
            <%-- getProperty 액션 태그로 자바빈즈에 저장된 내용 가져오기 --%>
            <li class="list-group-item"><jsp:getProperty name="person" property="name"/></li>
            <li class="list-group-item">나이 : <jsp:getProperty name="person" property="age"/></li>
            <%-- 쿼리스트링 및 param 액션 태그로 전달된 데이터를 출력 --%>
            <li class="list-group-item">본명 : <%= request.getParameter("param1") %></li>
            <li class="list-group-item">출생 : <%= request.getParameter("param2") %></li>
            <li class="list-group-item">특징 : <%= request.getParameter("param3") %></li>
        </ul>
    </div>

    <jsp:include page="inc/ParamInclude.jsp">
        <jsp:param name="loc1" value="강원도 영월"/>
        <jsp:param name="loc2" value="김삿갓면"/>
    </jsp:include>
</body>
</html>