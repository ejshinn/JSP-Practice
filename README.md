# JSP_Practice

### 1. study01(JSP 기본)
* page 지시어(import, 예외처리, try~catch, errorPage, isErrorPage)
* page 지시어(trimDirectiveWhitespaces, autoFlush)
* include 지시어


### 2. study02(내장 객체)
* request 객체
* getParameter 사용하기
* response 객체
* out 객체
* application 객체
* exception 객체


### 3. study03(내장 객체의 영역)
* page 영역
* request 영역
* session 영역
* application 영역


### 4. study04(쿠키)
* 쿠키 사용하기
* 쿠키를 사용하여 팝업창 관리하기
* 쿠키를 사용하여 id 저장하기


### 5. study05(데이터베이스)
* 데이터베이스 연동(jdbc connector 라이브러리 파일 직접 등록)
* 데이터베이스 연동(jdbc connector 빌드 시스템으로 등록)
* 데이터베이스에 insert, select, update, delete하기
* PreparedStatement 사용하기, 재활용하기
* DB 접속 개선하기
* ConnectionPool 사용하기


### 6. study06(세션)
* 세션 사용하기
* 세션을 통한 로그인 1
* 세션을 통한 로그인 2(DTO, DAO 사용)
* 회원 가입 추가


### 7. study07(액션 태그)
* 액션 태그 include
* 액션 태그 forward
* 액션 태그 useBean, setProperty, getProperty
* 액션 태그 param


### 8. study08(회원제 게시판 만들기)
* 회원제 게시판 만들기(전체 목록 보기, 상세 보기, 글쓰기)
* 회원제 게시판 만들기(글 수정, 글 삭제)
* 회원제 게시판 만들기(DTO, DAO 추가)
* 회원제 게시판 만들기(화면 layout 분리, util 클래스 추가)
* 회원제 게시판 만들기(로그인 구현, 회원가입 추가)
* 회원제 게시판 만들기(각 페이지에서 회원 로그인 확인)


### 9. study09(표현 언어)
* EL - 각 영역의 데이터 가져오기, 파라미터 값 가져오기, 객체 데이터 가져오기
* EL 내장 객체 사용하기, 컬렉션 사용하기
* EL에서 연산하기
* EL에서 메서드 호출하기, 정적 메서드 호출하기


### 10. study10(JSP 표준 태그 라이브러리)
* JSTL 사용하기
* JSTL core - set
* JSTL core - remove
* JSTL core - if, choose
* JSTL core - forEach, forTokens
* JSTL core - import, redirect, url
* JSTL core - out, catch
* JSTL formatting - formatNumber/parseNumber
* JSTL formatting - formatDate, timezone, locale


### 11. study11(서블릿)
* 서블릿 사용하기, 필요한 종속성 추가, web.xml 내용 추가
* @WebServlet 애너테이션으로 서블릿 사용하기
* jsp 페이지와 서블릿으로 로그인 페이지 만들기
* 하나의 서블릿 파일로 여러 개의 요청 처리하기
* 서블릿 생명주기
* 서블릿과 DB 연동하기


### 12. study12(파일 업로드 및 다운로드)
* 파일 업로드 : 종속성 추가, DB 접속정보 추가
* 파일 업로드 : DB 접속용 부모 클래스 생성, DTO, DAO 클래스 생성
* 파일 업로드 : 업로드 된 파일 정보 분석 및 저장용 클래스 생성
* 파일 업로드 : 파일 업로드 처리용 서블릿 생성, 사용자 입력 form 생성
* 파일 업로드 & 다운로드 : 파일 목록 페이지 생성, 다운로드 처리용 페이지 생성, 자바스크립트 사용 클래스 생성
* 파일 업로드 & 다운로드 : 다중 업로드용 form 페이지 생성, 다중 업로드 처리용 서블릿 생성


### 13. study13(MVC 패턴 게시판 만들기)
* MVC 패턴 게시판 프로젝트 생성, 종속성 추가, web.xml 설정
* MVC 패턴 게시판 : DB 접속용 클래스, DTO, DAO 추가
* MVC 패턴 게시판 : layout 파일, FileUtil.java, JSFunction.java 추가
* MVC 패턴 게시판 : 서블릿 ListController.java 추가, 뷰 List.jsp 추가
* MVC 패턴 게시판 : 서블릿 WriteController.java 추가, 뷰 Write.jsp 추가
* MVC 패턴 게시판 : 서블릿 ViewController.java 추가, 뷰 View.jsp 추가
* MVC 패턴 게시판 : 서블릿 DownloadController.java 추가, 서블릿 PassController 추가, 뷰 Pass.jsp 추가
* MVC 패턴 게시판 : 서블릿 EditController.java 추가, 뷰 Edit.jsp 추가
<br>

###### (성낙현의 JSP 자바 웹 프로그래밍(2판), 2023)을 학습하고 개인 학습용으로 정리한 내용입니다.
