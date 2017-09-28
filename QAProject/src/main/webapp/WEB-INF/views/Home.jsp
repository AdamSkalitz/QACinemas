<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

	

<%@ include file="common/header.jspf"%>
<body>
	<%@ include file="common/nav.jspf"%>
	<div class="row">
		<div class="col-md-12">
			<div id="carouselExampleControls" class="carousel slide"
				data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img height=500 width=500 class="d-block w-100"
							src="https://lumiere-a.akamaihd.net/v1/images/image_ccc4b657.jpeg"
							alt="First slide">
					</div>
					<div class="carousel-item">
						<img height=500 width=500 class="d-block w-100"
							src="http://vignette4.wikia.nocookie.net/avengersearthsmightiestheroes/images/4/4c/Marvel%27s_Avengers_Assemble.jpg/revision/latest?cb=20120714201800"
							alt="Second slide">
					</div>
					<div class="carousel-item">
						<img height=500 width=500 class="d-block w-100"
							src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Star_Wars_Logo.svg/1200px-Star_Wars_Logo.svg.png"
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