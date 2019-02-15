<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Online Shopping Website Using Spring MVC and Hibernate">
<meta name="author" content="Khozema Nullwala">
<meta name="_csrf" content="c515e4e8-b773-4bee-a923-8d94e7b9e3fb">
<meta name="_csrf_header" content="X-CSRF-TOKEN">

<title>Online Shopping - Home</title>

<script>
	window.menu = 'Home';

	window.contextRoot = '/onlineshopping'
</script>

<!-- Bootstrap Core CSS -->
<link href="/onlineshopping/resources/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap Readable Theme -->
<link href="/onlineshopping/resources/css/bootstrap-readable-theme.css"
	rel="stylesheet">


<!-- Bootstrap DataTables -->
<link href="/onlineshopping/resources/css/dataTables.bootstrap.css"
	rel="stylesheet">


<!-- Custom CSS -->
<link href="/onlineshopping/resources/css/myapp.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<div class="se-pre-con"></div>
	<div class="wrapper">

		<!-- Navigation -->

		<script>
			window.userRole = '';
		</script>
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/onlineshopping/home">Online
						Shopping</a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li id="about"><a href="/onlineshopping/about">About</a></li>

						<li id="contact"><a href="/onlineshopping/contact">Contact</a>
						</li>

						<li id="listProducts"><a
							href="/onlineshopping/show/all/products">View Products</a></li>

					</ul>

					<ul class="nav navbar-nav navbar-right">

						<li id="signup"><a href="/onlineshopping/membership">Sign
								Up</a></li>
						<li id="login"><a href="/onlineshopping/login">Login</a></li>


					</ul>

				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container -->
		</nav>



		<!-- Page Content -->

		<div class="content">

			<!-- Loading the home content -->

			<!-- DataTable Bootstrap Script -->
			<script src="/onlineshopping/resources/js/angular.js"></script>

			<!-- DataTable Bootstrap Script -->
			<script src="/onlineshopping/resources/js/productsController.js"></script>
			<div class="container" ng-app="ShoppingApp"
				ng-controller="ProductController as pCtrl">

				<div class="row" ng-init="pCtrl.fetchProducts()">

					<div class="col-md-3">
						<p class="lead">Shop Name</p>




						<div class="list-group">



							<a href="/onlineshopping/show/category/1/products"
								class="list-group-item" id="a_Laptop">Laptop</a> <a
								href="/onlineshopping/show/category/2/products"
								class="list-group-item" id="a_Television">Television</a> <a
								href="/onlineshopping/show/category/3/products"
								class="list-group-item" id="a_Mobile">Mobile</a>



						</div>
					</div>

					<div class="col-md-9">

						<div class="row carousel-holder">

							<div class="col-md-12">
								<div id="carousel-example-generic" class="carousel slide"
									data-ride="carousel">
									<ol class="carousel-indicators">
										<li data-target="#carousel-example-generic" data-slide-to="0"
											class="active"></li>
										<li data-target="#carousel-example-generic" data-slide-to="1"></li>
										<li data-target="#carousel-example-generic" data-slide-to="2"></li>
										<li data-target="#carousel-example-generic" data-slide-to="3"></li>
									</ol>
									<div class="carousel-inner">

										<div class="item active">
											<img class="slide-image"
												src="/onlineshopping/resources/images/banner1.jpg" alt="">
										</div>
										<div class="item">
											<img class="slide-image"
												src="/onlineshopping/resources/images/banner2.jpg" alt="">
										</div>
										<div class="item">
											<img class="slide-image"
												src="/onlineshopping/resources/images/banner3.jpg" alt="">
										</div>
										<div class="item">
											<img class="slide-image"
												src="/onlineshopping/resources/images/banner4.jpg" alt="">
										</div>
									</div>
									<a class="left carousel-control"
										href="#carousel-example-generic" data-slide="prev"> <span
										class="glyphicon glyphicon-chevron-left"></span>
									</a> <a class="right carousel-control"
										href="#carousel-example-generic" data-slide="next"> <span
										class="glyphicon glyphicon-chevron-right"></span>
									</a>
								</div>
							</div>

						</div>

						<div class="row">
							<div class="col-xs-12">
								<h3>Our Most Viewed Products</h3>
								<hr />
							</div>
						</div>

						<div class="row is-table-row">

							<div class="col-sm-4" ng-repeat="product in pCtrl.mvProducts">
								<div class="thumbnail">
									<img
										ng-src="/onlineshopping/resources/images/{{product.code}}.jpg"
										alt="{{product.name}}" class="landingImg">
									<h5>{{product.name}}</h5>
									<hr />
									<div class="caption">
										<h4 class="pull-right">&#8377; {{product.unitPrice}}</h4>
										<p>{{product.description}}</p>
										<a ng-href="/onlineshopping/show/{{product.id}}/product"
											class="btn btn-primary pull-right">View</a>
									</div>
								</div>

							</div>

							<div class="col-sm-4 col-lg-4 col-md-4">
								<h4>Checkout more products!</h4>
								<hr />
								<a class="btn btn-primary"
									href="/onlineshopping/show/all/products">More Products</a>
							</div>

						</div>

						<div class="row">
							<div class="col-xs-12">
								<h3>Our Most Purchased Products</h3>
								<hr />
							</div>
						</div>
						<div class="row is-table-row">

							<div class="col-sm-4" ng-repeat="product in pCtrl.mpProducts">
								<div class="thumbnail">
									<img
										ng-src="/onlineshopping/resources/images/{{product.code}}.jpg"
										alt="{{product.name}}" class="landingImg">
									<h5>{{product.name}}</h5>
									<hr />
									<div class="caption">
										<h4 class="pull-right">&#8377; {{product.unitPrice}}</h4>
										<p>{{product.description}}</p>
										<a ng-href="/onlineshopping/show/{{product.id}}/product"
											class="btn btn-primary pull-right">View</a>
									</div>
								</div>
							</div>

							<div class="col-sm-4 col-lg-4 col-md-4">
								<h4>Checkout more products!</h4>
								<hr />
								<a class="btn btn-primary"
									href="/onlineshopping/show/all/products">More Products</a>
							</div>

						</div>

					</div>

				</div>

			</div>
			<!-- /.container -->



			<!-- Load only when user clicks about -->


			<!-- Load only when user clicks contact -->


			<!-- Load only when user clicks contact -->



			<!-- Load only when user clicks show product -->


			<!-- Load only when user clicks manage product -->


			<!-- Load only when user clicks manage product -->


		</div>


		<!-- Footer comes here -->
		<div class="container footer">

			<hr>

			<!-- Footer -->
			<footer>
				<div class="row">
					<div class="col-lg-12">
						<p>Copyright &copy; Online Shopping 2017 - Designed and
							Developed By Khozema Nullwala</p>
					</div>
				</div>
			</footer>

		</div>

		<!-- jQuery -->
		<script src="/onlineshopping/resources/js/jquery.js"></script>

		<script src="/onlineshopping/resources/js/jquery.validate.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="/onlineshopping/resources/js/bootstrap.min.js"></script>

		<!-- DataTable Plugin -->
		<script src="/onlineshopping/resources/js/jquery.dataTables.js"></script>

		<!-- DataTable Bootstrap Script -->
		<script src="/onlineshopping/resources/js/dataTables.bootstrap.js"></script>

		<!-- DataTable Bootstrap Script -->
		<script src="/onlineshopping/resources/js/bootbox.min.js"></script>

		<!-- Self coded javascript -->
		<script src="/onlineshopping/resources/js/myapp.js"></script>

	</div>

</body>

</html>