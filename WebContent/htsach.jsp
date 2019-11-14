<%@page import="java.util.ArrayList"%>
<%@page import="sachbo.sachbo"%>
<%@page import="sachbean.sachbean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table width='1000' align='center'>
<% 
	
	ArrayList<sachbean> ds=(ArrayList<sachbean>)request.getAttribute("dssach");
	int ss=ds.size();
	for(int i=0;i<ss;i++){
		sachbean s=ds.get(i);
		%>
		<tr>
		<td><img src="<%=s.getAnh()%>" width="300" height="400" align='çenter'><br>
		<%=s.getTenSach() %><br>
		<%=s.getTacGia() %><br>
		<%=s.getGia() %><br>
		<a href="mua.jsp?ms=<%=s.getMaSach()%>&ts=<%=s.getTenSach() %>&tg=<%=s.getTacGia()%>&gia=<%=s.getGia() %>"><img src='mua.jpg'></a><hr>
		</td>
		<%i++;
		if(i<ss){s=ds.get(i);}
		%>
		<td><img src="<%=s.getAnh() %>"width="300" height="400" align='çenter'><br>
		<%=s.getTenSach() %><br>
		<%=s.getTacGia() %><br>
		<%=s.getGia() %><br>
		<a href="mua.jsp?ms=<%=s.getMaSach()%>&ts=<%=s.getTenSach()%>&tg=<%=s.getTacGia()%>&gia=<%=s.getGia()%>"><img src='mua.jpg'></a><hr>
		</td>
		</tr>
	<%} %>
</table>
</body>
</html>