<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common/header.jspf"%>
<body>
	<%@ include file="common/nav.jspf"%>

<div class="form-group col-md-12">
<h1>Sign In</h1>
<form >
   Username:<br>
  <input type="text" name="Username"><br>
   Password:<br>
  <input type="password" name="pwd"><br>
  </form> 
  <button class="btn"><a href="/QAProject/">Submit</a></button>
  <a href="/QAProject/Registration">Don't have an account? Register Here</a>
</div>


	<%@ include file="common/footer.jspf"%>