<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//session 에서 "id" 라는 키값으로 저장된 문자열이 있는지 읽어와 본다.
	// 있으면 로그인 된 상태, null 이면 로그인이 안된 상태 
	String id=(String)session.getAttribute("id");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<%-- include/resource.jsp 를 include 하기 --%>
<jsp:include page="include/resource.jsp"></jsp:include>
</head>
<body>
<%-- include/navbar.jsp 를 include 하기 --%>
<jsp:include page="include/navbar.jsp"></jsp:include>
<div class="container">
	<h1>인덱스 페이지 입니다.</h1>
	<ul>
		<li><a href="shop/buy.jsp?num=1&name=coffee">1번 상품 구입하기</a></li>
		<li><a href="shop/buy.jsp?num=2&name=sugar">2번 상품 구입하기</a></li>
		<li><a href="cafe/list.jsp">글 목록보기</a></li>
		<li><a href="file/list.jsp">파일 목록보기</a></li>
		<li><a href="cook/test1.jsp">쿠키 테스트</a></li>
		<li><a href="cook/test2.jsp">쿠키 테스트2</a></li>
		<li><a href="popup/parent.html">팝업 테스트</a></li>
		<li><a href="popup/main.jsp">팝업 테스트2</a></li>
		<li><a href="el01">EL 테스트</a></li>
		<li><a href="el02">EL 테스트2</a></li>
		<li><a href="el03">EL 테스트3</a></li>
		<li><a href="el/test04.jsp">EL 테스트4</a></li>
		<li><a href="jstl/test01.jsp">JSTL 테스트</a></li>
		<li><a href="jstl/test02.jsp">JSTL 테스트2</a></li>
		<li><a href="jstl/test03.jsp">JSTL 테스트3</a></li>
		<li><a href="jstl/test04.jsp">JSTL 테스트4</a></li>
		<li><a href="fortune">MVC 테스트 (오늘의 운세)</a></li>
		<li><a href="cafe/list.nhn">MVC 카페글 목록보기</a></li>
	</ul>
	<p>1243</p>
	<h1>Git Test 인덱스 페이지 입니다.</h1>
	<h3>test</h3>
	<h4>철언 연습중</h4>
</div>
<<<<<<< HEAD
=======


>>>>>>> branch 'hsh' of https://github.com/yeonsu100/AcornProject.git
</body>
</html>