<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="<c:url value="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js" />"></script>
<script src="<c:url value="/resources/js/controller.js" />"></script>
<title>Welcome to dairy Product</title>

</head>
<body>

	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a href="<c:url value="index.jsp"/>"></a><img
				src="<c:url value="/resources/images/logo.jpg"/>"
				style="height: 50px; margin-right: 10px; weigth: 50px;" alt="home"></a>

		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="allproducts">Products <span
						class="sr-only">(current)</span></a></li>
				<li><a href="#"></a></li>


			</ul>
			<!-- comment able -->
			
			<!-- up to here  -->
			<ul class="nav navbar-nav navbar-right">

				<c:if test="${pageContext.request.userPrincipal.name != null}">
					<li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
					<li><a href="<c:url value="/j_spring_security_logout" />">Logout</a></li>

					<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
						<li><a href="<c:url value="/customer/cart" />"> <span
								class="glyphicon glyphicon-shopping-cart"></span> Cart
						</a></li>
					</c:if>

					<c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
						<li><a href="<c:url value="/admin" />">Admin</a></li>
					</c:if>

				</c:if>

				<c:if test="${pageContext.request.userPrincipal.name == null}">
					<li><a href="<c:url value="/login" />">Login</a></li>
					<li><a href="<c:url value="/register" />">Register</a></li>
				</c:if>
			</ul>

		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>