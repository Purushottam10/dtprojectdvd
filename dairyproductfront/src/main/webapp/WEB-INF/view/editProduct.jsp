
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="template/Header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Edit Product</h1>


            <p class="lead">update the product information</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/editProduct"
                   method="post" commandName="product" enctype="multipart/form-data">

         <form:hidden path="pid" value="${product.pid}" />

            <div class="form-group">
                <label for="name">Name</label>
                <form:errors path="name" cssStyle="color:#ff0000;" />
                <form:input path="name" id="name" class="form-Control" value="${product.name}"/>
            </div>

            
            <div class="form-group">
                <label for="price">Price</label>
                <form:errors path="price" cssStyle="color:#ff0000;" />
                <form:input path="price" id="price" class="form-Control" value="${product.price}" />
            </div>

            <div class="form-group">
                <label for="condition">Description</label>
               <form:textarea path="description" id="description" class="form-Control" />
                
            </div>

           
            <div class="form-group">
                <label for="quantity">Quantity</label>
                <form:errors path="quantity" cssStyle="color:#ff0000;" />
                <form:input path="quantity" id="quantity" class="form-Control" value="${product.quantity}"/>
            </div>


            <div class="form-group">
                <label class="control-label" for="image">Upload Picture</label>
                <form:input id="image" path="image" type="file" class="form:input-large" />
            </div>

            <br/><br/>

            <input type="submit" value="submit" class="btn btn-default">
            <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>

        </form:form>

</div>
</div>
<%@include file="template/Footer.jsp" %>