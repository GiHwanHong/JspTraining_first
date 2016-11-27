<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page session="true" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date time = new Date();
	SimpleDateFormat formatter = 
			new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
<html>
<head>
<title>세션정</title>
</head>
<body>
세션ID:<%=session.getId() %> <BR>
<%
	time.setTime(session.getCreationTime());
%>
세션생성시간 : <%= formatter.format(time) %><br>
<%
	time.setTime(session.getLastAccessedTime());
%>
최근 접근시간 : <%= formatter.format(time) %>
</body>
</html>