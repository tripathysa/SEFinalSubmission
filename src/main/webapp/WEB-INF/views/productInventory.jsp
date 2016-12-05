<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/templates/header.jsp"%>
<br/><br/>
<h1>Product Inventory Page:</h1>
<br/>
<a href="<spring:url value="/admin/product/addProduct" />"><img src = "<c:url value = "/resources/css/images/add.png" />"></a>
<br/>
<table id="customers" cellspacing='0'> <!-- cellspacing='0' is important, must stay -->

    <!-- Table Header -->
    <thead>
    <tr style="background-color: green;">
        <th>Product Image</th>
        <th>Product Name</th>
        <th>Category</th>
        <th>Condition</th>
        <th>Price</th>
        <th></th>
    </tr>
    </thead>
    <!-- Table Header -->

    <!-- Table Body -->
    <tbody>

    <% int i=1; %>
    <c:forEach items="${products}" var="product">
        <% if (i%2==0 && i!=1) { %>
        <tr class="even">
            <td><img src = "<c:url value = "/resources/css/images/${product.productId}.png" />" alt = "image" style="width:100%"/></td>
            <td>${product.productName}</td>
            <td>${product.productCategory}</td>
            <td>${product.productCondition}</td>
            <td>${product.productPrice}</td>
            <td>
                <a href="<spring:url value="/product/viewProduct/${product.productId}" />"><img src = "<c:url value = "/resources/css/images/detailIcon.png" />"></a>
                <a href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />"><img src = "<c:url value = "/resources/css/images/delete.png" />"></a>
                <a href="<spring:url value="/admin/product/modifyProduct/${product.productId}" />"><img src = "<c:url value = "/resources/css/images/update.png" />"></a>
            </td>

        </tr>
        <% i=i+1; %>
        <% } else { %>
        <tr>
            <td><img src = "<c:url value = "/resources/css/images/${product.productId}.png" />" alt = "image" style="width:100%"/></td>
            <td>${product.productName}</td>
            <td>${product.productCategory}</td>
            <td>${product.productCondition}</td>
            <td>${product.productPrice}</td>
            <td>
                <a href="<spring:url value="/product/viewProduct/${product.productId}" />"><img src = "<c:url value = "/resources/css/images/detailIcon.png" />"></a>
                <a href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />"><img src = "<c:url value = "/resources/css/images/delete.png" />"></a>
                <a href="<spring:url value="/admin/product/modifyProduct/${product.productId}" />"><img src = "<c:url value = "/resources/css/images/update.png" />"></a>
            </td>
        </tr><!-- Table Row -->
        <% i=i+1; %>
        <% } %>
    </c:forEach>
    </tbody>
    <!-- Table Body -->

</table>
<a href="<spring:url value="/admin/product/addProduct" />"><img src = "<c:url value = "/resources/css/images/add.png" />"></a>
<br/><br/>
<%@include file="/WEB-INF/views/templates/footer.jsp" %>