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
	<h1>Git Test 인덱스 페이지 입니다.</h1>
	<h3>test</h3>
</div>
</body>
</html>