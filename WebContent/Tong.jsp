<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
	
	int n=Integer.parseInt(request.getParameter("txtn"));
	//kiem tra da tao session
	if(session.getAttribute("ss")==null)
		session.setAttribute("ss", 0);
	//b1: gan session vao cho bien
	int s=(int)session.getAttribute("ss");
	//b2: thay doi bien
	s=s+n;
	//b3: luu bien vao session
	session.setAttribute("ss", s);
	out.print("Tong: "+ session.getAttribute("ss"));
	%>
</body>
</html>