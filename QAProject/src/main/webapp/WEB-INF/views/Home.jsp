<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

	

<%@ include file="common/header.jspf"%>
<body>
	<%@ include file="common/nav.jspf"%>
	<div class="row">
		<div class="col-md-3">
			<h2>Filters</h2>
			<div class="list-group">
				<a 
					class="list-group-item list-group-item-action active">
					Star Wars</a>
				<a  class="list-group-item list-group-item-action">Marvel</a>
				<a  class="list-group-item list-group-item-action">DC</a>
				<a  class="list-group-item list-group-item-action">DR Who</a>
			
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
					role="" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleControls"
					role="" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>



	<div class="row">

	<c:forEach begin="0" end="3" var="product" items="${products}">
	
		<!-- Card -->
		<div "class="col-md-3">			
			<div class="card" style="width: 20rem;">
  			<img  id="${product.ID }" class="card-img-top imgProduct" width=250 height=250 src="${product.getImage()}" alt="Card image cap">
  			<div class="card-block">
    		<h4  id="${product.ID }" class="card-title">${product.name}</h4>
  			</div>
  			<ul class="list-group list-group-flush">
    		<li class="list-group-item">£ ${product.listPrice}</li>
  			</ul>
  			<div class="card-block">
    	
    		<button id="${product.ID }" class="btn btn-primar">More Details</button>
    		<a href="/QAProject/ShoppingBasket" class="btn btn-primar moreDetails">Add to Cart</a>
  			</div>
			</div>
		</div>
 		
   </c:forEach>


	</div>

	<script>
		$('.carousel').carousel({
			interval : 2000
		});
	</script>
	<%@ include file="common/footer.jspf"%>
			<script>
		
		$(document).on('click', 'button', function () {
		    var id = this.id
		    
		    window.location.href="/QAProject/ProductDetails?id="+id
		});
		
		$(document).on('click', '.imgProduct', function () {
		    var id = this.id
		    
		    window.location.href="/QAProject/ProductDetails?id="+id
		});
		$(document).on('click', 'h4', function () {
		    var id = this.id
		    
		    window.location.href="/QAProject/ProductDetails?id="+id
		});
	

		</script>