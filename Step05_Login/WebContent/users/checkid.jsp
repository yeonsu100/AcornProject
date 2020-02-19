<%@page import="test.users.dao.UsersDao"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. ajax 요청과 함께 inputId라는 파라미터명으로 전달된 문자열 읽어오기
	String inputId=request.getParameter("inputId");
	//2. DB에 이미 존재하는 아이디인지 확인한다.
	boolean isExist=UsersDao.getInstance().isExist(inputId);
	//3. 존재하는지 여부를 json형식의 문자열로 응답한다.
%>    
{"isExist": <%=isExist %>}
