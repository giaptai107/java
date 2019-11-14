<%@page import="java.text.DecimalFormat"%>
<%@page import="sachbo.giohangbo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="sachbean.sachbean"%>
<%@page import="sachbo.sachbo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Trang 1</title>
</head>

<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="home.jsp">HomePage</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active">
      
      
          <li><a href="t1.jsp">Shop</a></li>
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
          <li><a href="t2.jsp">Cart
          <%if(session.getAttribute("un")!=null){ %>
          (<%=k %>):<%=dd.format(l)%>vnd</a></li>  
          <%} %>
            <% if(session.getAttribute("un")!=null){ %>
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> <%=session.getAttribute("un")%></a></li>
      <%} %>
      <li><a href="dangnhap.jsp"><span class="glyphicon glyphicon-log-out"></span> Log out</a></li>
    </ul>
  
  </div>
</nav>
  
<div class="container">
	 <h3>Page 1</h3>
	 <table width='1000' align='center'>
		<%
			ArrayList<sachbean> ds = (ArrayList<sachbean>)request.getAttribute("dssach");
			int ss = ds.size();
			for (int i = 0; i < ss; i++) {
				sachbean s = ds.get(i);
		%>
		<tr>
			<td><img src="<%=s.getAnh()%>" width="400" height="400"
				align="çenter"><br> <%=s.getTenSach()%><br> <%=s.getTacGia()%><br>
				<%=s.getGia()%><br>
				 <a href="muacontroller?ms=<%=s.getMaSach()%>&ts=<%=s.getTenSach()%>&tg=<%=s.getTacGia()%>&gia=<%=s.getGia()%>">
				 <img
					src='buynow.jpg'>
				 </a>
			<hr></td>
			<%
				i++;
					if (i < ss) {
						s = ds.get(i);
					}
			%>
			<td><img src="<%=s.getAnh()%>" width="400" height="400"
				align='çenter'><br> <%=s.getTenSach()%><br> <%=s.getTacGia()%><br>
				<%=s.getGia()%><br> 
				 <a href="muacontroller?ms=<%=s.getMaSach()%>&ts=<%=s.getTenSach()%>&tg=<%=s.getTacGia()%>&gia=<%=s.getGia()%>">
				 <img
					src='buynow.jpg'>
				 </a>
			<hr></td>
		</tr>
		<%
			}
		%>
	</table>
</div>

</body>
</html>