<%@page import="sachbean.giohangbean"%>
<%@page import="sachbo.giohangbo"%>
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
	String ms=request.getParameter("ms");
	String ts=request.getParameter("ts");
	String tg=request.getParameter("tg");
	String giatam=request.getParameter("gia");
	if(giatam!=null){
		giohangbo gh=null;
		long gia=Long.parseLong(giatam);
		//Kiem tra xem da tao session
		if(session.getAttribute("gh")==null){
			gh=new giohangbo();
			session.setAttribute("gh", gh);
		}
			//b1: gan session vao bien:gh
			gh=(giohangbo)session.getAttribute("gh");
			//b2: thay doi bien gh
			gh.Them(ms, ts, tg, gia,1);
			//b3: luu bien vao lai session
			session.setAttribute("gh", gh);
			//hien thi
			response.sendRedirect("t2.jsp");
			}
%>
</body>
</html>