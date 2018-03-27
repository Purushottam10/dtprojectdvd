<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="template/Header.jsp" %>
<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <center> <h3>Registration successful!</h3></center>
                </div>
            </div>
        </section>

        <section class="container">
            <p><a href="<spring:url value="/product/productList" />" class="btn btn-default">Products</a></p>
        </section>

<%@include file="template/Footer.jsp" %>