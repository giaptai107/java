<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%=session.getAttribute("s")%>
<%
long s=(long)request.getAttribute("tong");
String ht = (String)request.getAttribute("ht");
String[] ds=(String[])request.getAttribute("dsht");
%>
Tong <%=s %><hr>
Ht: <%=ht %><hr>
Danh sach ho ten:<br>
<%
for (String st:ds)
	out.print(st+"<br>");
%>

</body>
</html>