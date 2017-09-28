<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common/header.jspf"%>
<%@ include file="common/styles.jspf"%>
<body>
	<%@ include file="common/nav.jspf"%>



	<div class="row">

		<div class="col-md-2">
			<a href="/QAProject/ProductGallery">Return to gallery</a>
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
			Price: ${products.getListPrice()} <br> Size:
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
	
	<br />
	<h2>Other Products</h2>
	<div class="row">
				<div class="card-deck">
			<div class="row">
				<c:forEach begin="4" end="7" var="products" items="${otherproducts}">
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="card">
							<div class="card-block">
								<h4 id="${products.ID }"
									class="card-title justify-content-center">${products.name}</h4>
							</div>

							<img id="${products.ID }"
								class="card-img-top imgProduct justify-content-center"
								src="${products.getImage()}" alt="Card image cap">
							<p class="center">£ ${product.listPrice}</p>
							<div class="extra-spacing"></div>
							<div class="card-footer">

								<button id="${products.ID }"
									class="  btn btn-primary btn-xs btn-xs-font">More
									Details</button>
								<a href="/QAProject/ShoppingBasket"
									class="btn btn-primary moreDetails  btn-xs btn-xs-font">Add
									to Cart</a>

							</div>
						</div>

					</div>
				</c:forEach>
			</div>
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