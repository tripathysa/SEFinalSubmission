<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Products:</title>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <link rel="shortcut icon" href="<c:url value = "/resources/css/images/favicon.ico" />" >
    <link rel="stylesheet" href="<c:url value = "/resources/css/detailstyle.css" />" type="text/css" media="all" />
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!--[if IE 6]>
    <script src="<c:url value = "/resources/js/DD_belatedPNG-min.js" />" type="text/javascript" charset="utf-8"></script>
    <![endif]-->
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

</head>
<body>

<h3> Add Products :</h3>
<p class="lead">Fill the below information to add a product:</p>
<form:form action="${pageContext.request.contextPath}/admin/productInventory/addProduct" method="post"
           commandName="product" enctype="multipart/form-data">
    <div class="form-group">
        <label for="name">Name</label>
        <form:input path="productName" id="name" class="form-Control"/>
    </div>

    <div class="form-group">
        <label for="category">Category</label>
        <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                         value="Apparels" />Apparels</label>
        <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                         value="Shoes" />Shoes</label>
        <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                         value="Accessories" />Accessories</label>
    </div>

    <div class="form-group">
        <label for="description">Description</label>
        <form:textarea path="productDescription" id="description" class="form-Control"/>
    </div>

    <div class="form-group">
        <label for="price">Price</label>
        <form:input path="productPrice" id="price" class="form-Control"/>
    </div>

    <div class="form-group">
        <label for="condition">Condition</label>
        <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                         value="new" />New</label>
        <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                         value="used" />Used</label>
    </div>

    <div class="form-group">
        <label for="status">Status</label>
        <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                         value="active" />Active</label>
        <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                         value="inactive" />Inactive</label>
    </div>

    <div class="form-group">
        <label for="unitInStock">Unit In Stock</label>
        <form:input path="unitInStock" id="unitInStock" class="form-Control"/>
    </div>

    <div class="form-group">
        <label for="manufacturer">Manufacturer</label>
        <form:input path="productManufacturer" id="manufacturer" class="form-Control"/>
    </div>

    <div class="form-group">
        <label class="control-label" for="productImage" >Upload product image</label>
        <form:input id = "productImage" path="productImage" type="file" class="form:input-large"/>
    </div>

    <br><br>
    <input type="submit" value="submit" class="btn btn-default">
    <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>
</form:form>


</body>
</html>
