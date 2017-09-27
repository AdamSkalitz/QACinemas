<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<%@ include file="common/header.jspf"%>
<body>
	<%@ include file="common/nav.jspf"%>
	
	<div class="container">
	<h2>Shopping Basket</h2>
	<table class="table table-striped">
  <thead class="thead-inverse">
    <tr>
      <th>Product</th>
      <th>Quantity</th>
      <th>Price</th>
      <th>Total</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><img src="http://www.collectiondx.com/gallery2/gallery/d/36613-2/prototype.jpg" class="img-responsive" alt="Cinque Terre">
       Superman Toy
      </td>
      <td>1</td>
      <td>£2.99</td>
      <td>£2.99</td>
    </tr>

  </tbody>
</table>

<button class="btn" ><a href="/QAProject/Checkout">Checkout</a></button>
	</div>

	<%@ include file="common/footer.jspf"%>