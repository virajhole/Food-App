<%@page import="com.ty.jsp_application_eb8_prc.dto.Items"%>
<%@page import="com.ty.jsp_application_eb8_prc.dto.FoodOrder"%>
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
	 	<div class="row">

			<table class="table table-hover">
				<thead>
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>Description</th>
						<th>Price</th>
						<th>Offer</th>
					</tr>
				</thead>
				<tbody>
					<%
					List<Menu> list = (List) request.getAttribute("menus");
					%>
					<%
					for (Menu menu : list) {
					%>
					<tr>
						<td class="table-plus"><%=menu.getId()%></td>
					 
						<td><%=menu.getName()%></td>
						<td><%=menu.getDescription()%></td>
						<td><%=menu.getPrice()%></td>
						<td><%=menu.getOffer()%></td>

					</tr>
					<%
					}
					%>
				</tbody>
			</table>
			<br><br><br><br>
			<h4>Previous orders</h4>
	<%
	FoodOrder foodOrder = (FoodOrder) request.getAttribute("foodorder");
	%>
	<%
	if (foodOrder != null) {
	%>
	 
	<table  class="table table-hover">

		
		<tr>
			<th>Name</th>
			<th>Description</th>
			<th>Price</th>
			<th>Offer</th>
			<th>Quantity</th>
			<th>Total Amount</th>
		</tr>
		<%
		for (Items items : foodOrder.getItems()) {
		%>
		<tr>
			<td><%=items.getName()%></td>
			<td><%=items.getDescription()%></td>
			<td><%=items.getPrice()%></td>
			<td><%=items.getOffer()%></td>
			<td><%=items.getQuantity()%></td>
			<td><%=items.getPrice() * items.getQuantity()%></td>
		</tr>
		<%
		}
		}
		%>
	</table>
	 <button type="submit" class="btn btn-primary btn-block" value="Login"><a href="login.jsp">Login</a></button>
 
	<a href="login.jsp"><button>StaffLogin</button></a>
		</div>
	</div>

	 
 
	<%-- <h4>Previous orders</h4>
	<%
	FoodOrder foodOrder = (FoodOrder) request.getAttribute("foodorder");
	%>
	<%
	if (foodOrder != null) {
	%>
	<table border="2px solid">
		<tr>
			<th>Name</th>
			<th>Description</th>
			<th>Price</th>
			<th>Offer</th>
			<th>Quantity</th>
			<th>Total Amount</th>
		</tr>
		<%
		for (Items items : foodOrder.getItems()) {
		%>
		<tr>
			<td><%=items.getName()%></td>
			<td><%=items.getDescription()%></td>
			<td><%=items.getPrice()%></td>
			<td><%=items.getOffer()%></td>
			<td><%=items.getQuantity()%></td>
			<td><%=items.getPrice() * items.getQuantity()%></td>
		</tr>
		<%
		}
		}
		%>
	</table>
	<a href="login.jsp"><button>StaffLogin</button></a> --%>
</body>
</html>