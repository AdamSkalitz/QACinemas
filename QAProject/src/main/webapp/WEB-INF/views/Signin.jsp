<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common/header.jspf"%>
<style>
#regtext {
	color: grey;
}

#regtext:hover {
	color: blue;
}

#submitbtn:hover {
	background-color: #426BBA border-color: #426BBA;
}

#submitbtn {
	background-color: #426BBA;
	border-color: #426BBA;
}

</style>
<body>
	<%@ include file="common/nav.jspf"%>
	<br>
	<center>
	<div class="form-group col-md-12">
		<div class="form-group col-md-3" id="signinBox">
			<h1>Sign In</h1><br>
			<form action="/QAProject/SigninUser" method="POST">
				Username:<br> <input type="text" name="name"
					class="form-control" required><br> Password:<br>
				<input type="password" name="password" class="form-control" required><br>
				<button id="submitbtn" type="submit" class="btn btn-success">Submit</button>
			</form>
			<a href="/QAProject/Registration" id="regText">Don't have an
			account? Register Here</a><br><br><br><br>
		</div></center>
		
	</div>


	<%@ include file="common/footer.jspf"%>