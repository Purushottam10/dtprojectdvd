<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<%@include file="template/Header.jsp" %>
<div class="container-wrapper">
    <div class="container" ng-app = "cartApp">
<center><h2>Detail of the  ${product.name} </h2> </center>
 <img src="<c:url value="/resources/images/${product.pid}.jpg" />" alt="image" style="width:50%"/>
                    
                    <p><strong>Name :</strong>${product.name}</p>                
                    <p><strong>Price :</strong>${product.price} </p>
              <c:set var="roel" scope="page" value="${param.role }"/>
              <br>
              
             <c:set var="url" scope="page" value="/product/add"/> <!-- i have to add may /productlList  -->
              <c:if test="${role='admin' }">
              <c:set var="url" scope="page" value="admin/productInventory"/>
              </c:if>
                <p ng-controller="cartCtrl">
                        <a href="<c:url value = "${url}" />" class="btn btn-default">Back</a>
                        <a href="#" class="btn btn-warning btn-large" ng-click="addToCart('${pid}')"><span class="glyphicon glyphicon-shopping-cart"></span> Order Now</a>
                        <a href="<c:url value="/customer/cart" />" class="btn btn-default"><span class="glyphicon glyphicon-hand-right"></span> View Cart</a>
                    </p>
                    </div>
                    </div>
                    <script src="<c:url value="/resources/js/controller.js?v3" /> "></script>
                    
<%@include file="template/Footer.jsp" %>
 