<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@ taglib prefix="x" uri="http://java.sun.com/jstl/xml"%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>

<html>
<%@ include file="common/header.jspf"%>
<%@ include file="common/styles.jspf"%>
<body>
	<%@ include file="common/nav.jspf"%>

	<h1 class="center">Product Gallery</h1>


	<div class="row">
		<div class="card-deck">
			<div class="row">
				<c:forEach var="product" items="${products}">
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="card">
							<div class="card-block">
								<h4 id="${product.ID }"
									class="card-title justify-content-center">${product.name}</h4>
							</div>

							<img id="${product.ID }"
								class="card-img-top imgProduct justify-content-center"
								src="${product.getImage()}" alt="Card image cap">
							<p class="center">£ ${product.listPrice}</p>
							<div class="extra-spacing"></div>
							<div class="card-footer">

								<button id="${product.ID }"
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

		$(document).on('click', 'img', function() {
			var id = this.id

			window.location.href = "/QAProject/ProductDetails?id=" + id
		});
		$(document).on('click', 'h4', function() {
			var id = this.id

			window.location.href = "/QAProject/ProductDetails?id=" + id
		});
	</script>