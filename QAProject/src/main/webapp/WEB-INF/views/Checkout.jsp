<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<%@ include file="common/header.jspf"%>
<body>
	<%@ include file="common/nav.jspf"%>

<div class="row">
<div class="col-md-6">
  <form>
  Log-in / <a href="/QAProject/Registration">Register</a> <br>
  <br>
    Username:<br>
  <input type="text" name="Username"><br>
   Password:<br>
  <input type="password" name="pwd"><br>
  <button type="button" class="loginbtn">Log-In</button><br>
 </form> 
	</div>
	
<div class="col-md-6">
   <form>
  <label><b>Continue as guest</b></label><br>
   Name:<br>
  <input type="text" name="Name"><br>
   Email:<br>
  <input type="text" name="Email"><br>
   Address line 1:<br>
  <input type="text" name="Address"><br>
   Address line 2:<br>
  <input type="text" name="Address2"><br>
   Post code:<br>
  <input type="text" name="Postcode"><br>
   <button type="button" class="Checkoutbtn"><a href="/QAProject/ThankYou">Checkout</a></button><br>
 </form> 
			</div>
		</div>
		</div>


	<%@ include file="common/footer.jspf"%>