<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><title>ch06: Session.jsp</title></head>
<body>
<div align = "center">
<H2>Session 예제</H2>
<HR>
<%
	//isNew() 메서드를 이용해 최초세션설정을 확인하고 있다.
	if(session.isNew()){
		out.println("<script> alert('세션이 해제되어 다시 설정합니다.')</script>");
		session.setAttribute("login", "#홍길동");
	}
%>
<%= session.getAttribute("login") %> 님 환영합니다.!!!<BR>
1. 세션 ID : <%= session.getId() %><BR>
2. 세션 유지시간 : <%= session.getMaxInactiveInterval() %> <BR>
</div>
</body>
</html>