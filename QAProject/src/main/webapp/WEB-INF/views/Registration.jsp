<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ include file="common/header.jspf"%>
<style>

.btn{background-color:#426BBA;
	border-color: #426BBA;
	}

.btn:hover{
	background-color: #426BBA;
	border-color: #426BBA;
}</style>
<body>
	<%@ include file="common/nav.jspf"%>

<div class="form-group col-md-12"><center>
<div class="form-group col-md-5">
<br>
<h1>Registration</h1> <br>
<form action="/QAProject/AddAccount" method="POST">
   Name:<br>
  <input type="text" name="Name" class="form-control" required><br>
   Email:<br>
  <input type="text" name="Email" class="form-control" required><br>
   Confirm Email:<br>
  <input type="text" name="ConfirmEmail" class="form-control" required><br>
   Password:<br>
  <input type="password" name="Password" class="form-control" required><br>
   Confirm Password:<br>
  <input type="password" name="ConfirmPassword" class="form-control" required><br>
   Phone Number:
   <br>
  <input type="text" name="Phone" class="form-control" required>
  <br>
  <button type="submit" class="btn btn-success" id="btn">Submit</button>
  
 </form>
</div></center></div> 
	<%@ include file="common/footer.jspf"%>
	
