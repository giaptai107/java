<%@page import="javax.websocket.SendResult"%>
<%@page import="sachbo.giohangbo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Xoa</title>
</head>
<body>
<%
giohangbo gh=(giohangbo)session.getAttribute("gh");
String ms=request.getParameter("ms");
gh.Xoa(ms);
response.sendRedirect("t2.jsp");
%>
</body>
</html>