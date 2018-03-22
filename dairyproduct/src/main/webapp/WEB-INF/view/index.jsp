<!DOCTYPE html>
<%@include file="template/Header.jsp" %>
	<!--image carousel-->
	<center>
		<!-- Wrapper for slides -->
		<div class="container-fluid">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>
               
				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="item active">
						<img src="./resources/images/slide3.png" alt="first image">
					</div>

					<div class="item">
						<img src="./resources/images/slide1.png" alt="second image">
					</div>

					<div class="item">
						<img src="./resources/images/slide2.png" alt="third image">
					</div>
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel"data-slide="prev">
				 <span 	class="glyphicon glyphicon-chevron-left"></span>
				  <span	class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" data-slide="next">
				 <span 	class="glyphicon glyphicon-chevron-right"></span>
				  <span	class="sr-only">Next</span>
				</a>
			</div>
		</div>
		<!--  circled image -->
	<!-- 	<div class="container" style="margin-top: 20px" class="row">

			<div class="image">
				<div class="col-md-1" style="margin-right: 300px;">
					<div class="media-up">
						<img src="./resources/images/coocike.jpg"
							style="margin-right: 300px; width: 300px; height: 300px;"
							class="img-circle">
					</div>
					<div class="media-body" style="margin-left: 300px;">
						<h4 class="heading">Arrivle</h4>
						<p>It is yeamy and crunchy coockie</p>
					</div>
				</div>
			</div>
			<div class="image">
				<div class="col-md-1" style="margin-right: 300px;">
					<div class="media-up">
						<img src="./resources/images/mixture.jpg"
							style="width: 300px; height: 300px; margin-right: 300px;"
							class="img-circle">
					</div>
					<div class="media-body" style="margin-left: 300px; text-align:center;">
						<h4 class="heading">sessional</h4>
						<p >It is teasty and spiecy avialabe</p>
						<p>enoy the season with the Numkin</p>
					</div>
				</div>
			</div>
			<div class="image">
				<div class="col-md-1" style="margin-right: 250px;">
					<div class="media-up">
						<img src="./resources/images/mixture2.jpg"
							style="width: 300px; height: 300px;" class="img-circle">
					</div>
					<div class="media-body" style="margin-left: 300px;">
						<h4 class="heading">offer</h4>
						<p>It is teasty and spiecy avialabe for customer</p>
						<p>On this 20% discout is avilable</p>
					</div>
				</div>
			</div>
		</div>-->
	</center>
	<%@include file="template/Footer.jsp" %>