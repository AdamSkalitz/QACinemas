<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

	
<%@ taglib prefix="x" uri="http://java.sun.com/jstl/xml" %>

<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>
	
<html>
<%@ include file="common/header.jspf"%>
<body>
	<%@ include file="common/nav.jspf"%>
	
	<h1>Product Gallery</h1>
	
	
	<div class="row">
		<div class="col-md-3">
		<h2>Filters</h2>
			<div class="list-group">
				<a 
					class="list-group-item list-group-item-action active">
					Star Wars</a>
				<a  class="list-group-item list-group-item-action">Marvel</a>
				<a  class="list-group-item list-group-item-action">DC</a>
				<a  class="list-group-item list-group-item-action">DR Who</a>
			
			</div>
		</div>

		
	<c:forEach  var="product" items="${products}">
	
		<!-- Card -->
		<div "class="col-md-3">			
			<div class="card" style="width: 20rem;">
  			<img id="${product.ID }" class="card-img-top" width=250 height=250 src="${product.getImage()}" alt="Card image cap">
  			<div class="card-block">
    		<h4  id="${product.ID }" class="card-title">${product.name}</h4>
  			</div>
  			<ul class="list-group list-group-flush">
    		<li class="list-group-item">£ ${product.listPrice}</li>
  			</ul>
  			<div class="card-block">
    	
    		<button id="${product.ID }" class="btn btn-primar">More Details</button>
    		<a href="/QAProject/ShoppingBasket" class="btn btn-primar">Add to Cart</a>
  			</div>
			</div>
		</div>
 		
   </c:forEach>
  
		</div>

	<%@ include file="common/footer.jspf"%>
		<script>
		
		$(document).on('click', 'button', function () {
		    var id = this.id
		    
		    window.location.href="/QAProject/ProductDetails?id="+id
		});

		$(document).on('click', 'img', function () {
		    var id = this.id
		    
		    window.location.href="/QAProject/ProductDetails?id="+id
		});
		$(document).on('click', 'h4', function () {
		    var id = this.id
		    
		    window.location.href="/QAProject/ProductDetails?id="+id
		});
		</script>
	
	