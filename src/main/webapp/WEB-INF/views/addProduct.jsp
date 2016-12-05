<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Products:</title>
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
    <h3> Add Products :</h3>
    <p class="lead">Fill the below information to add a product:</p>
    <form:form action="${pageContext.request.contextPath}/admin/product/addProduct" method="post"
               commandName="product" enctype="multipart/form-data">
        <fieldset>

            <label for="name">Name</label><form:errors path="productName" cssStyle="color:#ff0000;"/>
            <form:input type ="text" path="productName" id="name" class="form-Control"/>
            <div>
                <label for="ddl2">Category</label>
                <select id="ddl" onchange="configureDropDownLists(this,document.getElementById('ddl2'))">
                    <option value=""></option>
                    <option value="apparel">Apparel</option>
                    <option value="sports">Sports</option>
                    <option value="nutrition">Nutrition</option>
                    <option value="home fitness">Home Fitness</option>
                </select>

                <form:select id="ddl2" path="productCategory"/>
                </select>
            </div>
            <br/>
            <label for="description">Description</label>
            <form:textarea path="productDescription" id="description" class="form-Control"/>
            <label for="price">Price</label><form:errors path="productPrice" cssStyle="color:#ff0000;"/>
            <form:input type ="text" path="productPrice" id="price" class="form-Control"/>
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

            <div>
                <label for="featured">Featured</label>
                <label class="checkbox-inline"><form:radiobutton path="featured" id="featured"
                                                                 value="Yes" />Featured</label>
                <label class="checkbox-inline"><form:radiobutton path="featured" id="featured"
                                                                 value="No" />Not Featured</label>
            </div>
            <br/>
            <label for="unitInStock">Unit In Stock</label><form:errors path="unitInStock" cssStyle="color:#ff0000;"/>
            <form:input type="text" path="unitInStock" id="unitInStock" class="form-Control"/>

            <label for="manufacturer">Manufacturer</label>
            <form:input type="text" path="productManufacturer" id="manufacturer" class="form-Control"/>
            <label class="control-label" for="productImage" >Upload product image</label>
            <form:input id = "productImage" path="productImage" type="file" class="form:input-large"/>
            <br/>
            <input type="submit" value="submit">
            <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>
        </fieldset>

    </form:form>
</div>

<script type="text/javascript">
    function configureDropDownLists(ddl1,ddl2) {
        var nutrition = ['drinks', 'supplements', 'health foods','energy bars'];
        var apparel = ['men', 'women', 'kids','wearables'];
        var sports = ['soccer', 'basketball', 'baseball','football'];
        var homefitness = ['weights', 'machines', 'yoga','boxing'];

        switch (ddl1.value) {
            case 'nutrition':
                ddl2.options.length = 0;
                for (i = 0; i < nutrition.length; i++) {
                    createOption(ddl2, nutrition[i], nutrition[i]);
                }
                break;
            case 'apparel':
                ddl2.options.length = 0;
                for (i = 0; i < apparel.length; i++) {
                    createOption(ddl2, apparel[i], apparel[i]);
                }
                break;
            case 'sports':
                ddl2.options.length = 0;
                for (i = 0; i < sports.length; i++) {
                    createOption(ddl2, sports[i], sports[i]);
                }
                break;
            case 'home fitness':
                ddl2.options.length = 0;
                for (i = 0; i < homefitness.length; i++) {
                    createOption(ddl2, homefitness[i], homefitness[i]);
                }
                break;
            default:
                ddl2.options.length = 0;
                break;
        }

    }

    function createOption(ddl, text, value) {
        var opt = document.createElement('option');
        opt.value = value;
        opt.text = text;
        ddl.options.add(opt);
    }
</script>
</body>
</html>
