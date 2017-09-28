<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common/header.jspf"%>
<body>
	<%@ include file="common/nav.jspf"%>

	<div class="form-group col-md-12">
		<h1>Sign In</h1>
		<form action="/QAProject/SigninUser" method="POST">
			Username:<br> <input type="text" name="name" class="form-control" required><br>
			Password:<br> <input type="password" name="password" class="form-control" required><br>
			<button type="submit" class="btn btn-success">Submit</button>
		</form>
		  
		<a href="/QAProject/Registration">Don't have an account? Register
			Here</a>
	</div>


	<%@ include file="common/footer.jspf"%>