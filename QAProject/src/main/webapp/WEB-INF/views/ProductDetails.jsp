<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common/header.jspf"%>
<body>
	<%@ include file="common/nav.jspf"%>


<style>
.return{background-color:#426BBA}
</style>
	<div class="row">

		<div class="col-md-2">
		<br>
			<a href="/QAProject/ProductGallery" class="return" >Return to gallery</a>
		</div>

		<div class="container">
		<div class="col-md-6 col-md-offset-3 ">

			<h1>${products.getName()}</h1>
		</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-4">
			<img src="${products.getImage()}" width=400 height=400 />
		</div>
		<div class="col-md-8">
			Colour: ${products.getColour()} <br> Description:
			<p>${products.getDescription()}</p>
			Price: £${products.getListPrice()} <br> Size:
			${products.getSize()} <br> Weight: ${products.getWeight()} <br>



			
			<br>
				<button class="btn">
				
					<a href="/QAProject/ShoppingBasket">Add to cart</a>
				</button>
			<br>
			<br>
			<select class="form-control col-md-2" >
  			<option value="volvo">Small</option>
  			<option value="saab">Medium</option>
  			<option value="vw">Large</option>
			</select>
			<br>
			<br>
				<input class="input-group-addon" value="1">Quantity</input>
		

		</div>
	</div>
	</div>
	<br />
	<h2>Other Products</h2>
	<div class="row">

		<c:forEach begin="4" end="7" var="products" items="${otherproducts}">

			<!-- Card -->
			<div "class="col-md-3">
				<div class="card" style="width: 20rem;">
					<img class="imgProduct" id="${products.ID }" class="card-img-top" width=250 height=250
						src="${products.getImage()}" alt="Card image cap">
					<div class="card-block">
						<h4 id="${products.ID }" class="card-title list-group-item">${products.name}</h4>
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item">£ ${products.listPrice}</li>
					</ul>
					<div class="card-block">

						<button id="${products.ID }" class="btn btn-primar">More
							Details</button>
						<a href="/QAProject/ShoppingBasket" class="btn btn-primar">Add
							to Cart</a>
					</div>
				</div>
			</div>

		</c:forEach>


	</div>
	</div>
	<%@ include file="common/footer.jspf"%>
	<script>
		$(document).on('click', 'button', function() {
			var id = this.id

			window.location.href = "/QAProject/ProductDetails?id=" + id
		});

		$(document).on('click', '.imgProduct', function() {
			var id = this.id

			window.location.href = "/QAProject/ProductDetails?id=" + id
		});
		$(document).on('click', 'h4', function() {
			var id = this.id

			window.location.href = "/QAProject/ProductDetails?id=" + id
		});
	</script>