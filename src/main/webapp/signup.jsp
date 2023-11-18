<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Bootstrap CSS -->
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #f8f9fa;
    }

    .signup-container {
      max-width: 400px;
      margin: auto;
      margin-top: 50px;
    }
  </style>
</head>
<body>
<div class="container signup-container">
  <h2 class="text-center mb-4">Sign Up</h2>
  <form action="signup" method="post">
    <div class="form-group">
      <label for="name">Name:</label>
      <input  name="name" type="text" class="form-control" id="name" placeholder="Enter your name">
    </div>
    <div class="form-group">
      <label for="email">Email:</label>
      <input name="email" type="email" class="form-control" id="email" placeholder="Enter your email">
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input name="password" type="password" class="form-control" id="password" placeholder="Enter your password">
    </div>
    <div class="form-group">
      <label for="phone">Phone:</label>
      <input name="phone" type="tel" class="form-control" id="phone" placeholder="Enter your phone">
    </div>
    <div class="form-group">
      <label for="address">Address:</label>
      <input name="address" type="text" class="form-control" id="address" placeholder="Enter your address">
    </div>
    <div class="form-group">
      <label for="role">Role:</label>
      <select class="form-control" id="role" name="role">
        <option value="" selected>Select</option>
        <option>Select</option>
						<option value="manager">Manager</option>
						<option value="staff">Staff</option>
						<option value="customer">Customer</option>
      </select>
    </div>
    <button  value="Save" type="submit" class="btn btn-primary btn-block">Sign Up</button>
  </form>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

 
</body>
</html>