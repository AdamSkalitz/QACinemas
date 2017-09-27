<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="common/header.jspf"%>
<body>
	<%@ include file="common/nav.jspf"%>
	
	
	
	<div class="row">

		<div class="col-md-2">
			<a href="/QAProject/ProductGallery">Return to gallery</a>
		</div>

		<div class="col-md-10">

			<h1>${products.getName()}</h1>
		</div>
	</div>

	<div class="row">
		<div class="col-md-4">
			<img
				src="${products.getImage()}" width=500 height=500 />
		</div>

			Colour: ${products.getColour()}
			<br>
			Description:
			<p>${products.getDescription()}</p>
			Price: ${products.getListPrice()}
			<br>
			Size: ${products.getSize()}
			<br>
			Weight: ${products.getWeight()}
			<br>
		</div>
	
		<div class="row">
		<div class="col-md-4">
			<button class="btn">Add to cart</button>
		</div>
		<div class="col-md-4">
			<input class="btn" value="1">Quantity</input>
		</div>
		<div class="col-md-4">
			<button class="btn">Options</button>

		</div>
	</div>
	</div>
	</div>
	<br/>
	<h2>Related Products</h2>
	<div class="row">
		<!-- Card -->
		<div class="col-md-3">
			<div class="card" style="width: 20rem;">
				<img class="card-img-top"
					src="https://truimg.toysrus.com/product/images/38B64981.zoom.jpg?fit=inside|356:368"
					alt="Card image cap">
				<div class="card-body">
					<h4 class="card-title">Card title</h4>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="/QAProject/ProductDetails" class="btn btn-primary">Go
						somewhere</a>
				</div>
			</div>
		</div>

		<!-- Card 2-->
		<div class="col-md-3">
			<div class="card" style="width: 20rem;">
				<img class="card-img-top"
					src="https://truimg.toysrus.com/product/images/38B64981.zoom.jpg?fit=inside|356:368"
					alt="Card image cap">
				<div class="card-body">
					<h4 class="card-title">Card title</h4>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="/QAProject/ProductDetails" class="btn btn-primary">Go
						somewhere</a>
				</div>
			</div>
		</div>

		<!-- Card 3-->
		<div class="col-md-3">
			<div class="card" style="width: 20rem;">
				<img class="card-img-top"
					src="https://truimg.toysrus.com/product/images/38B64981.zoom.jpg?fit=inside|356:368"
					alt="Card image cap">
				<div class="card-body">
					<h4 class="card-title">Card title</h4>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="/QAProject/ProductDetails" class="btn btn-primary">Go
						somewhere</a>
				</div>
			</div>
		</div>

		<!-- Card 4-->
		<div class="col-md-3">
			<div class="card" style="width: 20rem;">
				<img class="card-img-top"
					src="https://truimg.toysrus.com/product/images/38B64981.zoom.jpg?fit=inside|356:368"
					alt="Card image cap">
				<div class="card-body">
					<h4 class="card-title">Card title</h4>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="/QAProject/ProductDetails" class="btn btn-primary">Go
						somewhere</a>
				</div>
			</div>
		</div>



	</div>
	<%@ include file="common/footer.jspf"%>