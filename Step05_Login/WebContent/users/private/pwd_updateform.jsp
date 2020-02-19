<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/private/pwd_updateform.jsp</title>
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
<div class="container">
	<ol class="breadcrumb">
		<li class="list-group-item list-group-item-question list-group-no-note clearfix"><a href="${pageContext.request.contextPath }/cafe/list.jsp">글 목록</a></li>
		<li class="list-group-item list-group-item-question list-group-no-note clearfix"><a href="${pageContext.request.contextPath }/file/list.jsp">자료 목록</a></li>
	</ol>
	<h1>비밀번호 수정 페이지</h1>
	<form action="pwd_update.jsp" method="post">
		<div class="form-group">
			<label for="pwd">기존 비밀번호</label>
			<input class="form-control" type="password" name="pwd" id="pwd" />
		</div>
		<div class="form-group">
			<label for="newPwd">새 비밀번호</label>
			<input class="form-control" type="password" name="newPwd" id="newPwd" />
		</div>
		<div class="form-group">
			<label for="newPwd2">새 비밀번호 확인</label>
			<input class="form-control" type="password" name="newPwd2" id="newPwd2" />
		</div>
		<button class="btn btn-primary" type="submit" onclick="submitContents()this;">수정 확인</button>
	</form>
</div>
<script>
	//폼에 submit 이벤트가 일어났을 때 실행할 함수 등록
	$("form").on("submit", function(){
		//새 비밀번호 2개가 일치하는지 확인
		var pwd=$("#newPwd").val();
		var pwd2=$("#newPwd2").val();
		if(pwd != pwd2){
			alert("비밀번호를 확인 하세요!");//알림 띄우기
			$("$newPwd").focus();//포커수 주기
			return false;//폼 전송 막기
		}
	});
</script>
</body>
</html>