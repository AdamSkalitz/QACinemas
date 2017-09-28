<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ include file="common/header.jspf"%>
<body>
	<%@ include file="common/nav.jspf"%>

<div class="row">
<div class="col-md-6 form-group">
<center>
  <form>
  <b>Log-in / <a href="/QAProject/Registration">Register</a></b> <br>
  <br>
    Username:<br>
  <input class="form-control" type="text" name="Username"><br>
   Password:<br>
  <input class="form-control" type="password" name="pwd"><br>
  <br>
  <button type="button" class="loginbtn btn" onClick="window.location.href='/QAProject/ThankYou'">Log-In</button><br>
 </form> 
 </center>
	</div>
	
<div class="col-md-6 form-group">
</center>
   <form>
  <label><b>Continue as guest</b></label><br>
   Name:<br>
  <input type="text"  class="form-control" name="Name"><br>
   Email:<br>
  <input type="text" class="form-control" name="Email"><br>
   Address line 1:<br>
  <input type="text" class="form-control" name="Address"><br>
   Address line 2:<br>
  <input type="text" class="form-control" name="Address2"><br>
   Post code:<br>
  <input type="text" class="form-control" name="Postcode"><br>
   <button type="button" onClick="window.location.href='/QAProject/ThankYou'" class="Checkoutbtn btn">Checkout</button><br>
 </form> 

			</div>
		</div>
		 </center>
		</div>


	<%@ include file="common/footer.jspf"%>