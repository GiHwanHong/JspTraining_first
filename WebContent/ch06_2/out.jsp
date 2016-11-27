<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>out.jsp</title>
</head>
<body>
<center>
<H2> out 참조 변수의 사용 </H2>
<HR>
1. 설정된 버퍼 크기 : <%= out.getBufferSize() %> <BR>
2. 남아있는 버퍼 크기 : <%= out.getRemaining() %> <BR>
<% out.flush(); %>

<!--  out.close();  -->
</center>
</body>
</html>