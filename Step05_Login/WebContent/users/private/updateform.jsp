<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/private/updateform.jsp</title>
<%-- 필요한 css 로딩하기  --%>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/custom.css" />
<%-- 필요한 javascript 로딩하기 --%>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
<jsp:include page="../../include/resource.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../../include/navbar.jsp"></jsp:include>
<%
	//session영역에서 id 읽어오기
	String id=(String)session.getAttribute("id");
	//id를 이용해서 가입 정보 얻어오기
	UsersDto dto=UsersDao.getInstance().getData(id);
%>
<div class="container">
	<h1>이메일 수정 폼</h1>
	<form action="update.jsp" method="post">
		<input type="hidden" name="id" value="<%=id %>" />
		<div class="form-group">
			<label for="id">아이디</label>
			<input class="form-control" type="text" id="id" value="<%=id %>" disabled/>
		</div>
		<div class="form-group">
			<label for="email">이메일</label>
			<input class="form-control" type="text" id="email" name="email" 
				value="<%=dto.getEmail() %>"/>
		</div>
		<button class="btn btn-primary" type="submit" onclick="submitContents()this;">수정확인</button>
		<button class="btn btn-warning" type="reset">취소</button>
	</form>
</div>
</body>
</html>