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
      <th>Quantity</th>
      <th>Price</th>
      <th>Total</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><img height=250 width=250 src="https://images-na.ssl-images-amazon.com/images/I/91Qa5J9sH-L._SL1500_.jpg" class="img-responsive" alt="Cinque Terre">
       Lego Death Star
      </td>
      <td>1</td>
      <td>£400.00</td>
      <td>£400.00</td>
    </tr>

  </tbody>
</table>

<button class="btn" ><a href="/QAProject/Checkout">Checkout</a></button>
	</div>

	<%@ include file="common/footer.jspf"%>