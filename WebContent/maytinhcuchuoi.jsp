<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% Long a,b,kq=(long)0;
	String aa=request.getParameter("txta");
	String bb=request.getParameter("txtb");
	String nut=request.getParameter("but1");
	String kqua=request.getParameter("txtkq");
%>
	<form method='post' action='maytinhcuchuoi.jsp'>
	a= <input type='number' name='txta' value='<%=(aa==null?"":aa)%>'><br>
	b= <input type='number' name='txtb' value='<%=(bb==null?"":bb)%>'><br>
	kq= <input type='number' name='txtkq' value='<%=(aa==null?"":kq)%>'><br>
	<input type='submit' name='but1' value='+'>
	<input type='submit' name='but1' value='-'>
	</form>
</body>
</html>