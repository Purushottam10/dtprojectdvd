
<%@include file="template/Header.jsp" %>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            
            <p class="lead">administrator page!</p>
        </div>

        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <h2>
                Welcome: ${pageContext.request.userPrincipal.name} |
                <a href="<c:url value="/j_spring_security_logout"/>">Logout</a>
            </h2>

        </c:if>

        <h3>
            <a href="<c:url value="/admin/productInventory" /> ">Product Inventory</a>
        </h3>

        <p>check before modify product </p>

        <br/><br/>

        <h3>
            <a href="<c:url value="/admin/customer" /> ">Customer Management</a>
        </h3>

        <p>view the customer information!</p>
</div>
</div>
<%@include file="template/Footer.jsp" %>