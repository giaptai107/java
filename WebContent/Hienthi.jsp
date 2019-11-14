<%@page import="sachdao.sachdao"%>
<%@page import="sachbo.sachbo"%>
<%@page import="sachbean.sachbean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Sách</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>

</head>
<body>
<div class="container">
	<table class="table table-primary table-bordered ">
		<tr>
			<h1 class="text-danger bg-warning" align="center">Info</h1>
		</tr>
		<tr>
			<td>
				<%
					sachbo sach = new sachbo();
					for (sachbean s: sach.getSach()){
				%>
					<a href="Hienthi.jsp?ms=<%=s.getMaSach()%>&ts=<%=s.getTenSach()%>&tg=<%=s.getTacGia()%>&anh=<%=s.getAnh()%>" align="center">
						<h3><i><%=s.getMaSach() %></i></h3>					
					</a><hr>
				  <%}%>				 
			</td>
			
			<td valign="top" align = "center" style="font-size:20px;">
				<%	
					String ms = request.getParameter("ms");
					String ts = request.getParameter("ts");
					String tg = request.getParameter("tg");
					String anh = request.getParameter("anh");
					if(ms == null){
						out.print("Ready");
					}
					else{
				%>		
						<p class="text-danger">Tên sách: <% out.print(ts);%></p>  <hr>
						<p class="text-danger">Tác giả: <% out.print(tg); %></p>  <hr>
						<img src="<%=anh%>" width="300" height="400" align='çenter'>
				  <%}%>	
			</td>
		</tr>
		</div>
	</table>
</body>
</html>

