<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common/header.jspf"%>
<body>
	<%@ include file="common/nav.jspf"%>
	<%@ include file="common/styles.jspf"%>

<style>
.basketTable{background-color:#426BBA;}
th{color:#fff}

</style>
	
	<div class="container">
	<center>
	<h2>Shopping Basket</h2>
	</center>
	<table class="table table-striped">
  <thead class="basketTable">
    <tr>
      <th>Product Image</th>
      <th>Product Name</th>
      <th>Size</th>
      <th>Quantity</th>
      <th>Price</th>
      <th>Total</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><img height=250 width=250 src="https://www.truffleshuffle.co.uk/store/images_high_res/Mens_Black_Star_Wars_Logo_T_Shirt_hi_res.jpg" class="img-responsive" alt="Cinque Terre">
       
      </td>
      <td>Star Wars T-Shirt</td>
      <td>Medium</td>
      <td>1</td>
      <td>£17.99</td>
      <td>£17.99</td>
    </tr>

  </tbody>
</table>
<center>
<button onClick="window.location.href='/QAProject/Checkout'" class="btn btn-success" >Checkout</a></button>
	</center>
	</div>

	<%@ include file="common/footer.jspf"%>