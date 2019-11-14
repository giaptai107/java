<%@page import="sachbo.giohangbo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sua</title>
</head>
<body>
<%
giohangbo gh=(giohangbo)session.getAttribute("gh");
String ms = request.getParameter("ms");
String ts = request.getParameter("ts");
String tg = request.getParameter("tg");
String gia = request.getParameter("gia");
String sl=request.getParameter("txtsua");
gh.Them(ms, ts, tg,Long.parseLong(gia),Long.parseLong(sl));
session.setAttribute("gh", gh);
response.sendRedirect("t2.jsp"); 
%>
</body>
</html>