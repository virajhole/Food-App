<%@page import="com.ty.jsp_application_eb8_prc.dto.Menu"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<%-- <script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
	 --%>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

</head>
<body>


	<div class="container mt-3">

		<h1>Display</h1>
		
		<a href="createmenu.jsp"><button class="btn btn-primary ">CREATE MENU</button></a>
    
		<a href="home.jsp"><button class="btn btn-primary  ">LOGOUT</button></a>
   
		<div class="row">

			<table class="table table-hover">
				<thead>
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>Description</th>
						<th>Price</th>
						<th>Offer</th>
						<th>Update</th>
						<th>Delete</th>

					</tr>
				</thead>
				<tbody>
					<%
					List<Menu> menus = (List) request.getAttribute("menus");
					%>
					<%
					for (Menu menu : menus) {
					%>
					<tr>
						<td class="table-plus"><%=menu.getId()%></td>

						<td><%=menu.getName()%></td>
						<td><%=menu.getDescription()%></td>
						<td><%=menu.getPrice()%></td>
						<td><%=menu.getOffer()%></td>
						<td><a href="update?id=<%=menu.getId()%>"><button class="btn btn-warning   ">UPDATE</button></a></td>
						<td><a href="delete?id=<%=menu.getId()%>"><button class="btn btn-danger  ">DELETE</button></a></td>
 
   

					</tr>
					<%
					}
						%>
				</tbody>
			</table>
		</div>
	</div>




</body>
</html>