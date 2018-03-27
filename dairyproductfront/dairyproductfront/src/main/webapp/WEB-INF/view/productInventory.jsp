
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="template/Header.jsp" %>

<script>
    $(document).ready(function(){
        $('.table').DataTable({
            "lengthMenu": [[1,2,3,5,10, -1], [1,2,3,5,10, "All"]]
        });
    });
</script> 

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Inventory Page</h1>


            <p class="lead">This is the product inventory page:</p>
             <a href="<spring:url value="/admin/product/addProduct" />" class="btn btn-primary">Add Product</a>
      <br><br>
        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
            <th>Image</th>
                <th>Product Name</th>
                <th>description</th>
                <th>Price</th>
                 <th>Quantity</th>
                <th>Category</th>
               
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.pid}.png" />" class="img-thumbnail"  width="30"/></td>
                    <td>${product.name}</td>
                    <td>${product.description}</td>
                    <td>${product.price}  </td>
                     <td>${product.quantity}  </td>
                      <td></td>
                    <td>
                        <a href="<spring:url value="/viewProduct/${product.pid}"/>"><span class="glyphicon glyphicon-info-sign"></span></a>
                        <a href="<spring:url value="/admin/product/deleteProduct/${product.pid}" />"><span class="glyphicon glyphicon-remove"></span></a>
                        <a href="<spring:url value="/admin/product/editProduct/${product.pid}" />"><span class="glyphicon glyphicon-pencil"></span></a>
                    </td>
                </tr>
-            </c:forEach>
        </table>
      
</div>
</div>
</div>
<%@include file="template/Footer.jsp" %>
