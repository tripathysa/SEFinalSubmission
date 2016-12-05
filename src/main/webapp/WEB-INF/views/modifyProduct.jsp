<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>FitFreak&reg; Modify Product Details:</title>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="<c:url value = "/resources/css/detailstyle.css" />" type="text/css" media="all" />
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!--[if IE 6]>
    <script src="<c:url value = "/resources/js/DD_belatedPNG-min.js" />" type="text/javascript" charset="utf-8"></script>
    <![endif]-->
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

</head>
<body>


<div class="form-style-5">
    <h3> FitFreak&reg; Modify Product Details:</h3>
    <p class="lead">Fill the below information to add a product:</p>
    <form:form action="${pageContext.request.contextPath}/admin/product/modifyProduct" method="post"
               commandName="product" enctype="multipart/form-data">

        <form:hidden path="productId" value="${product.productId}" />
        <fieldset>

            <label for="name">Name</label><form:errors path="productName" cssStyle="color:#ff0000;"/>
            <form:input type ="text" path="productName" id="name" class="form-Control" value="${product.productName}"/>
            <div>
                <label for="category">Category</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                                 value="Apparels" />Apparels</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                                 value="Shoes" />Shoes</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                                 value="Accessories" />Accessories</label>
            </div>
            <br/>
            <label for="description">Description</label>
            <form:textarea path="productDescription" id="description" class="form-Control" value="${product.productDescription}"/>
            <label for="price">Price</label><form:errors path="productPrice" cssStyle="color:#ff0000;"/>
            <form:input type ="text" path="productPrice" id="price" class="form-Control" value="${product.productPrice}"/>
            <div>
                <label for="condition">Condition</label>
                <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                                 value="new" />New</label>
                <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                                 value="used" />Used</label>
            </div>
            <br/>

            <div>
                <label for="status">Status</label>
                <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                                 value="active" />Active</label>
                <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                                 value="inactive" />Inactive</label>
            </div>
            <br/>
            <label for="unitInStock">Unit In Stock</label><form:errors path="unitInStock" cssStyle="color:#ff0000;"/>
            <form:input type="text" path="unitInStock" id="unitInStock" class="form-Control" value="${product.unitInStock}"/>

            <label for="manufacturer">Manufacturer</label>
            <form:input type="text" path="productManufacturer" id="manufacturer" class="form-Control" value="${product.productManufacturer}"/>

            <label class="control-label" for="productImage" >Upload product image</label>
            <form:input id = "productImage" path="productImage" type="file" class="form:input-large"/>
            <br/>
            <input type="submit" value="submit">
            <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>
        </fieldset>

    </form:form>
</div>


</body>
</html>
