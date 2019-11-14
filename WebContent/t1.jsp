<%@page import="sachbean.loaibean"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="sachbo.giohangbo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="sachbo.sachbo"%>
<%@page import="sachbean.sachbean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Mặt hàng</title>
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
      <a class="nav-link" href="sachcontroller">Trang 1</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="t2.jsp">Trang 2
      <%if(session.getAttribute("un")!=null){ %>
      (<%=k %>):<%=dd.format(l)%>vnd 
      <% }%>
       </a>
    </li>
    
    <li class="nav-item">
    <%
    if(session.getAttribute("un")==null){
    	response.sendRedirect("dangnhap.jsp");
    }else{%>
    	<a href="#"></a>
    	<h2><%=session.getAttribute("un") %></h2>
    	 
    	</li>
    	<%} %>
    
     
    <li class="nav-item">
      <a class="nav-link " href="dangxuat.jsp">LogOut</a>
    </li>
		
  </ul>
</nav>
<div class="container">
<div class="row">
	<table class="col-2" width="1000" align="center">
		<tr>
		<td valign="top" width="200">
			<%ArrayList<loaibean> dsloai=(ArrayList<loaibean>)request.getAttribute("dsloai");%>
		<table width="200" class="table table-hover table-border">
			<% try{for(loaibean ls : dsloai){%>
		<tr>
		<td>
		<a href="sachcontroller?ml=<%=ls.getMaloai()%>"><%=ls.getTenloai() %></a>
		</td>
		</tr>
			<%}}catch(Exception e){} %>
		</table>
		</td>
		</tr>
	</table>
	<table class="col-8" width='1000' align='center'>
<% 
	sachbo sach=new sachbo();
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
<form class="col-2" action="sachcontroller" method="post">
		<input type="text" class="form-control" name="txttk">
		<br>
		<input type="submit" class="btn-primary" name="but1" value="search">
		</form>
</div>

	
</body>
</html>