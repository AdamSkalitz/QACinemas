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
      <td><img src="https://www.dobbies.com/ImageGen.ashx?image=/media/12057659/monte-carlo-chair.jpg&Class=ProductThumbnail" class="img-responsive" alt="Cinque Terre">
       Alexander Rose Monte Carlo Hanging Chair
      </td>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th>3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
	</div>

	<%@ include file="common/footer.jspf"%>