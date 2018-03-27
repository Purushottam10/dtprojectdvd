<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@  include file="template/Header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Add Product</h1>


            <p class="lead">Fill the below information to add a product:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/addProduct"
                   method="post" modelAttribute="addproduct" enctype="multipart/form-data" >
            <div class="form-group">
                <label for="name">Name</label>
                <form:errors path="name" cssStyle="color:#ff0000;" />
                <form:input path="name" id="name" class="form-Control" />
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <form:input path="description" id="description" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="price">Price</label>
                <form:errors path="price" cssStyle="color:#ff0000;" />
                <form:input path="price" id="price" class="form-Control" />
            </div>

            
            <div class="form-group">
                <label for="quantity">Quantity</label>
                <form:errors path="quantity" cssStyle="color:#ff0000;" />
                <form:input path="quantity" id="quantity" class="form-Control" />
            </div>

            
            <div class="form-group">
                <label class="control-label" for="imageURL">Upload Picture</label>
                <form:input id="image" path="image" type="file" class="form:input-large" />
            </div>

       
          

        <br/><br/>

        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>

    </form:form>
</div>
</div>
<%@ include file ="template/Footer.jsp" %>