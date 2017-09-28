<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common/header.jspf"%>
<body>
	<%@ include file="common/nav.jspf"%>
	
	<div class="container">
	<h2>Shopping Basket</h2>
	<table class="table table-striped">
  <thead class="thead-inverse">
    <tr>
      <th>Product</th>
      <th>Size</th>
      <th>Quantity</th>
      <th>Price</th>
      <th>Total</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><img height=250 width=250 src="https://www.truffleshuffle.co.uk/store/images_high_res/Mens_Black_Star_Wars_Logo_T_Shirt_hi_res.jpg" class="img-responsive" alt="Cinque Terre">
       Star Wars T-Shirt
      </td>
      <td>Medium</td>
      <td>1</td>
      <td>£17.99</td>
      <td>£17.99</td>
    </tr>

  </tbody>
</table>

<button class="btn" ><a href="/QAProject/Checkout">Checkout</a></button>
	</div>

	<%@ include file="common/footer.jspf"%>