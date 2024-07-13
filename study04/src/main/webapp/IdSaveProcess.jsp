<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%-- CookieManager, JSFunction 클래스 import --%>
<%@ page import="bitc.fullstack405.study04.util.CookieManager" %>
<%@ page import="bitc.fullstack405.study04.util.JSFunction" %>

<%
    // IdSaveMain 페이지에서 전달한 데이터를 가져옴
    String userId = request.getParameter("userId");
    String userPw = request.getParameter("userPw");
    String saveCheck = request.getParameter("saveCheck");

    System.out.println(userId + "<>" + userPw);
    System.out.println(saveCheck);

    // 전달받은 데이터와 로그인 정보 데이터를 비교
    if ("test1".equals(userId) && "1234".equals(userPw)) {
        // 로그인 성공
        if (saveCheck != null && saveCheck.equals("Y")) {
            // loginId 라는 이름의 쿠키명을 전달
            // 실제 userId도 함께 전달
            // CookieManager 클래스의 정적 메서드 makeCookie()를 호출하여 쿠키 생성
            CookieManager.makeCookie(response, "loginId", userId, 86400);
        }
        else {
            CookieManager.deleteCookie(response, "loginId");
        }

        // JSFunction 클래스에서 정적 메서드로 선언한 alertLocation() 실행
        JSFunction.alertLocation("로그인에 성공했습니다.", "IdSaveMain.jsp", out);
    }
    else {
        // 로그인 실패
        // JSFunction 클래스에서 정적 메서드로 선언한 alertBack() 실행
        JSFunction.alertBack("로그인에 실패했습니다.", out);
    }
%>