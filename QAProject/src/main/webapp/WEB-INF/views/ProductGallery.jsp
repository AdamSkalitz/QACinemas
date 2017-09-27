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
				<button type="button"
					class="list-group-item list-group-item-action active">
					Cras justo odio</button>
				<button type="button" class="list-group-item list-group-item-action">Dapibus
					ac facilisis in</button>
				<button type="button" class="list-group-item list-group-item-action">Morbi
					leo risus</button>
				<button type="button" class="list-group-item list-group-item-action">Porta
					ac consectetur ac</button>
				<button type="button" class="list-group-item list-group-item-action"
					disabled>Vestibulum at eros</button>
			</div>
		</div>
		
	<c:forEach  var="product" items="${products}">
	
		<!-- Card -->
		<div class="col-md-3">			
			<div class="card" style="width: 20rem;">
  			<img class="card-img-top" src="https://truimg.toysrus.com/product/images/38B64981.zoom.jpg?fit=inside|356:368" alt="Card image cap">
  			<div class="card-block">
    		<h4 class="card-title">${product.name}</h4>
    		<p class="card-text">${product.description}</p>
  			</div>
  			<ul class="list-group list-group-flush">
    		<li class="list-group-item">£ ${product.listPrice}</li>
    		<li class="list-group-item">Colour: ${product.colour}</li>
  			</ul>
  			<div class="card-block">
    		<a href="/QAProject/ProductDetails" class="btn btn-primar">More Details</a>
    		<a href="/QAProject/ProductDetails" class="btn btn-primar">Add to Cart</a>
  			</div>
			</div>
		</div>
 		
   </c:forEach>
  
		</div>

		




	<%@ include file="common/footer.jspf"%>