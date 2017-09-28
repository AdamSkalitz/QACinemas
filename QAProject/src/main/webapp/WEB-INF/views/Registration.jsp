<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ include file="common/header.jspf"%>
<body>
	<%@ include file="common/nav.jspf"%>

<div class="form-group col-md-12">
<h1>Registration</h1>
<form action="/AddAccount" method="POST">
   Name:<br>
  <input type="text" name="Name" class="form-control"><br>
   Email:<br>
  <input type="text" name="Email"><br>
   Confirm Email:<br>
  <input type="text" name="ConfirmEmail"><br>
   Password:<br>
  <input type="password" name="Password"><br>
   Confirm Password:<br>
  <input type="password" name="ConfirmPassword"><br>
   PhoneNumber:<br>
  <input type="text" name="Phonenumber"><br>
  <button type="submit" class="btn btn-success">Register</button>
 </form> 
 <button class="btn"><a href="/QAProject/">Submit</a></button>
</div>
	<%@ include file="common/footer.jspf"%>