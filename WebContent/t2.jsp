<%@page import="java.text.DecimalFormat"%>
<%@page import="sachbean.giohangbean"%>
<%@page import="sachbo.giohangbo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Giỏ hàng</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <ul class="navbar-nav">
    <li class="nav-item active">
      <a class="nav-link" href="#">WEBSITENAME</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="sachcontroller">Trang 1</a>
    </li>
    <%
    DecimalFormat dd=new DecimalFormat("###,###");
	  int k=0;
	  long l=0;
    if(session.getAttribute("gh")!=null)
    { giohangbo gh=(giohangbo)session.getAttribute("gh");
      k=gh.ds.size();
      l=gh.TinhTong();
    }
    %>
    <li class="nav-item">
      <a class="nav-link" href="t2.jsp">Trang 2
      <%if(session.getAttribute("un")!=null){ %>
      (<%=k %>):<%=dd.format(l)%>vnd</a></li>  
      <% }%>
      </a>
    </li>
    <li class="nav-item">
    <%
    if(session.getAttribute("un")==null){
    	response.sendRedirect("dangnhap.jsp");
    }else{%>
    	<a href="#">
    	<%=session.getAttribute("un") %>
    	 
    	</li>
    	<%} %>
    </li>
    <li class="nav-item">
      <a class="nav-link " href="dangxuat.jsp">LogOut</a>
    </li>
  </ul>
</nav>
<div class="container">
<% 
int stt=0;
if(session.getAttribute("gh")!=null)
{  
	giohangbo gh=(giohangbo)session.getAttribute("gh");
	if(gh.ds.size()==0)
	{%>
	<h1 align="center">Gio Hang Rong</h1>
	<div align="center"><a href="t1.jsp"><img  src="mua.jpg"></a></div>
	 <%
	}
	else{
	%>
	<table width='1000' align='center' border="1" >
	<% for(giohangbean g: gh.ds){%>
	<tr>
	<td><%=g.getMasach() %></td>
	<td><%=g.getTensach() %></td>
	<td><%=g.getTacgia() %></td>
	<td><%=g.getGia() %></td>
	<td>
	<form method="post" action="suagh.jsp?ms=<%=g.getMasach()%>&ts=<%=g.getTensach()%>&tg=<%=g.getTacgia()%>&gia=<%=g.getGia()%>">
		<input type="text" name='txtsua' value="<%=g.getSoluong()%>">
		<input type='submit' name='sua' value="Chinh sua">
	</form>
	</td>
	<td>
	<form method="post" action="xoagh.jsp?ms=<%=g.getMasach()%>">
		<input type='submit' name='xoa' value="Xoa">
	</form>
	</td>
	<td><%=g.getThanhtien()%></td>
	<%
	} %>
   </tr>
	</table>
	
	<div align="right">Tong:<%=gh.TinhTong() %></div>
	<div align="center"><a href="t1.jsp"><img  src="mua.jpg"></a></div>
	<%
}}

%>
</div>

	
</body>
</html>