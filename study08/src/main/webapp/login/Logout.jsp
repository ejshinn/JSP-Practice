<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%-- 로그아웃 페이지(UI 없음) --%>

<%-- 1. 등록된 세션 정보 삭제 --%>
<%-- 2. 메시지 출력 후 목록 페이지로 이동 --%>

<%@ page import="bitc.fullstack405.study08.util.JSFunction" %>

<%
    session.removeAttribute("userId");
    session.removeAttribute("userName");

    session.invalidate();

    JSFunction.alertLocation("로그아웃되었습니다.", "../List.jsp", out);
%>