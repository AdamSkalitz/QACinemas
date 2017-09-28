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
				src="${products.getImage()}" width=400 height=400 />
		</div>
<div class="col-md-8">
			Colour: ${products.getColour()}
			<br>
			Description:
			<p>${products.getDescription()}</p>
			Price: £${products.getListPrice()}
			<br>
			Size: ${products.getSize()}
			<br>
			Weight: ${products.getWeight()}
			<br>

	

		<div class="col-md-2">
			<button class="btn"><a href="/QAProject/ShoppingBasket">Add to cart</a></button>
		</div>
		<div class="col-md-2">
			<input class="btn" value="1">Quantity</input>
		</div>
		<div class="col-md-2">
			<button class="btn">Options</button>

</div>
	</div>
	</div>
	</div>
	<br/>
	<h2>Related Products</h2>
		<div class="row">

	<c:forEach begin="4" end="7" var="products" items="${otherproducts}">
	
		<!-- Card -->
		<div "class="col-md-3">			
			<div class="card" style="width: 20rem;">
  			<img id="${products.ID }" class="card-img-top" width=250 height=250 src="${products.getImage()}" alt="Card image cap">
  			<div class="card-block">
    		<h4 id="${products.ID }" class="card-title">${products.name}</h4>
  			</div>
  			<ul class="list-group list-group-flush">
    		<li class="list-group-item">£ ${products.listPrice}</li>
  			</ul>
  			<div class="card-block">
    	
    		<button id="${products.ID }" class="btn btn-primar">More Details</button>
    		<a href="/QAProject/ShoppingBasket" class="btn btn-primar">Add to Cart</a>
  			</div>
			</div>
		</div>
 		
   </c:forEach>


	</div>
	</div>
	<%@ include file="common/footer.jspf"%>
				<script>
		
		$(document).on('click', 'button', function () {
		    var id = this.id
		    
		    window.location.href="/QAProject/ProductDetails?id="+id
		});
		
		$(document).on('click', 'img', function () {
		    var id = this.id
		    
		    window.location.href="/QAProject/ProductDetails?id="+id
		});
		$(document).on('click', 'h4', function () {
		    var id = this.id
		    
		    window.location.href="/QAProject/ProductDetails?id="+id
		});
	

		</script>