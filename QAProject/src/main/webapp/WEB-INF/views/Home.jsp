<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<%@ include file="common/header.jspf"%>
<body>
	<%@ include file="common/nav.jspf"%>
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
		<div class="col-md-9">
			<div id="carouselExampleControls" class="carousel slide"
				data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img class="d-block w-100"
							src="https://lumiere-a.akamaihd.net/v1/images/image_ccc4b657.jpeg"
							alt="First slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100"
							src="https://lumiere-a.akamaihd.net/v1/images/image_ccc4b657.jpeg"
							alt="Second slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100"
							src="https://lumiere-a.akamaihd.net/v1/images/image_ccc4b657.jpeg"
							alt="Third slide">
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleControls"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleControls"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
	<div class="row">
		<!-- Card -->
		<div class="col-md-3">
			<div class="card" style="width: 20rem;">
				<img class="card-img-top" src="https://truimg.toysrus.com/product/images/38B64981.zoom.jpg?fit=inside|356:368" alt="Card image cap">
				<div class="card-body">
					<h4 class="card-title">Card title</h4>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="/QAProject/ProductDetails" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
		</div>

		<!-- Card 2-->
		<div class="col-md-3">
			<div class="card" style="width: 20rem;">
				<img class="card-img-top" src="https://truimg.toysrus.com/product/images/38B64981.zoom.jpg?fit=inside|356:368" alt="Card image cap">
				<div class="card-body">
					<h4 class="card-title">Card title</h4>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="/QAProject/ProductDetails" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
		</div>

		<!-- Card 3-->
		<div class="col-md-3">
			<div class="card" style="width: 20rem;">
				<img class="card-img-top" src="https://truimg.toysrus.com/product/images/38B64981.zoom.jpg?fit=inside|356:368" alt="Card image cap">
				<div class="card-body">
					<h4 class="card-title">Card title</h4>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="/QAProject/ProductDetails" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
		</div>
		
		<!-- Card 4-->
		<div class="col-md-3">
			<div class="card" style="width: 20rem;">
				<img class="card-img-top" src="https://truimg.toysrus.com/product/images/38B64981.zoom.jpg?fit=inside|356:368" alt="Card image cap">
				<div class="card-body">
					<h4 class="card-title">Card title</h4>
					<p class="card-text">Some quick example text to build on the
						card title and make up the bulk of the card's content.</p>
					<a href="/QAProject/ProductDetails" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
		</div>



	</div>

	<script>
 
    	$('.carousel').carousel({
    		  interval: 2000
    		});
    </script>
	<%@ include file="common/footer.jspf"%>