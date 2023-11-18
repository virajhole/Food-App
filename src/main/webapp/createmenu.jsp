<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <title>Create Menu</title>
  <!-- Bootstrap CSS -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #f8f9fa;
    }

    .product-container {
      max-width: 400px;
      margin: auto;
      margin-top: 50px;
    }
  </style>
</head>
<body>
<div class="container product-container">
  <h2 class="text-center mb-4">Create Menu</h2>
  <form action="savemenu" method="post">
    <div class="form-group">
      <label for="name">Name:</label>
      <input  name="name" type="text" class="form-control" id="name" placeholder="Enter the name">
    </div>
    <div class="form-group">
      <label for="description">Description:</label>
       <input  name="description" type="text" class="form-control" id="description" placeholder="Enter the description">
    </div>
    <div class="form-group">
      <label for="price">Price:</label>
      <input name="price" type="number" class="form-control" id="price" placeholder="Enter the price">
    </div>
    <div class="form-group">
      <label for="offer">Offer:</label>
      <input name="offer"  type="text" class="form-control" id="offer" placeholder="Enter the offer">
    </div>
    <button type="submit" class="btn btn-primary btn-block" value="Save">Submit</button>
  </form>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

	 
</body>
</html>