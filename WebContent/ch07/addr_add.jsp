<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, jspbook.login.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="addr" class="jspbook.login.AddrBook"/>
<jsp:setProperty property="*" name="addr"/> <!-- addr 객체의 모든 setProperty에 대해 받아온 인자값을 사용한다. -->
<jsp:useBean id="am" class="jspbook.login.AddrManager" scope="application"/>

<%
 am.add(addr);
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주소추가 </title>
</head>
<body>

<h2> 등록내용 </h2>
이름 : <jsp:getProperty property="username" name="addr"/><p>
전화번호 : <%= addr.getTel() %><p>
이메일 : <jsp:getProperty property="email" name="addr"/><p>
성별: <%= addr.getSex() %><p>
<hr>
<a href="addr_list.jsp">목록보기</a>
</body>
</html>