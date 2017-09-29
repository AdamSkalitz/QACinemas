<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common/header.jspf"%>
<%@ include file="common/styles.jspf"%>
<body>
	<%@ include file="common/nav.jspf"%>


<style>
.return{background-color:#426BBA}
</style>
	<div class="row">


		<div class="col-md-3">
			<a class="return-gallery" href="/QAProject/ProductGallery">Return to gallery<span class="glyphicon glyphicon-arrow-left"></span></a>

		</div>

		<div class="container">
		<div class="col-md-12 ">

			<h1 class="center margin-bottom">${products.getName()}</h1>
		</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-4">
			<img src="${products.getImage()}" width=400 height=400 />
		</div>
		<div class="col-md-8">
		<p><span class="last-color">Colour:</span> ${products.getColour()}</p>
		<p><span class="last-color">Description:</span> ${products.getDescription()}</p>			 
			<p></p>
			<p><span class="last-color">Price:</span> ${products.getListPrice()}</p>
			<p><span class="last-color">Size:</span> ${products.getSize()}</p>
			<p><span class="last-color">Weight:</span> ${products.getWeight()} Kg</p>
		
		<div class="btn-toolbar mb-3" role="toolbar" aria-label="Toolbar with button groups">
  <div class="btn-group mr-2" role="group" aria-label="First group">
    <a href="/QAProject/ShoppingBasket"
				class="btn btn-success">Add
				to Cart</a>
				
				<c:if test="${products.getProductSubCategoryID()==3 }">
				<span class="input-group-addon" id="btnGroupAddon">Size</span>
    	<select class="form-control" >
  			<option value="volvo">Small</option>
  			<option value="saab">Medium</option>
  			<option value="vw">Large</option>
			</select>
			</c:if>
    <span class="input-group-addon" id="btnGroupAddon">Quantity</span>
    <input type="number" min="1" class="form-control" placeholder="Enter Quantity" aria-label="Input group example" aria-describedby="btnGroupAddon">
  </div>
</div>
				</div>
		
			
		</div>
		<div class="container">

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
									<br>
				
							</div>
		
							<img id="${products.ID }"
								class="card-img-top imgProduct justify-content-center"
								src="${products.getImage()}" alt="Card image cap">
							<p class="center">£${products.listPrice}</p>
							<div class="extra-spacing"></div>
							<div class="card-footer">

								<button id="${products.ID }"
									class="  btn btn-primary btn-xs btn-xs-font">More
									Details</button>
								<a href="/QAProject/ShoppingBasket"
									class="btn btn-success moreDetails  btn-xs btn-xs-font">Add
									to Cart</a>

							</div>
						</div>

					</div>
				</c:forEach>
			</div>
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