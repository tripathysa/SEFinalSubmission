<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/templates/header.jsp"%>




<!-- Begin Slider -->
<div id="slider">
    <!-- Begin Shell -->
    <div class="shell">
        <ul class="slider-items">
            <li>
                <img src="<c:url value = "${images[0]}" />" alt="Slide Image" />
            </li>
            <li>
                <img src="<c:url value = "${images[1]}" />" alt="Slide Image" />
            </li>
            <li>
                <img src="<c:url value = "${images[2]}" />" alt="Slide Image" />
            </li>
        </ul>
        <div class="cl">&nbsp;</div>
        <div class="slider-nav">

        </div>
    </div>
    <!-- End Shell -->
</div>
<!-- End Slider -->


<h1>${category}</h1>
<form id="searchform">
    <input type="text" class ="search" id="search-criteria" name="search" placeholder="Search..">
    </br>
    Price Range:
    <input type="text" class="search" style="width:20%; background-image:none;" id="price-lower" onkeypress='return event.charCode >= 48 && event.charCode <= 57'> -
    <input type="text" class="search" style="width:20%; background-image:none;" id="price-upper" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>

</form>

<div id="products">
    <h2>Products</h2>
    <br/>
    <c:forEach items="${products}" var="product">

        <div class="product">
            <a href="<spring:url value="/productList/viewProduct/${product.productId}" />"><img class="zoom_01" src = "<c:url value = "/resources/css/images/${product.productId}.png" />" data-zoom-image="<c:url value = "/resources/css/images/${product.productId}.png" />" alt = "image"/></a>
            <div class="price">
                <div class="inner">
                    <span class="title">Price</span>
                    <strong><span>$</span><x class="priceAmount">${product.productPrice}</x></strong>
                </div>
            </div>
            <div class="info">
                <p class="productname">${product.productName}</p>
                <p class="number"><a class="btn btn-default" href="<spring:url value="/product/viewProduct/${product.productId}" />"><img src = "<c:url value = "/resources/css/images/checkdetails.PNG" />"></a></p>
            </div>
        </div>

    </c:forEach>
</div>
<br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/>
<br/><br/><br/><br/>
<br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/>
<br/><br/><br/><br/>
<br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/>
<br/><br/><br/><br/>
<br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/>
<br/><br/><br/><br/>
<br/><br/><br/><br/>
<br/><br/><br/><br/>

<script>
    $('.zoom_01').elevateZoom({
        zoomType: "inner",
        cursor: "crosshair",
        zoomWindowFadeIn: 1000,
        zoomWindowFadeOut: 1000
    });
</script>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<%@include file="/WEB-INF/views/templates/footer.jsp" %>
<script>
    $("#search-criteria").on("keyup", function() {
        var g = $(this).val().toLowerCase();
        $(".product .info .productname").each(function() {
            var s = $(this).text().toLowerCase();
            $(this).closest('.product')[ s.indexOf(g) !== -1 ? 'show' : 'hide' ]();
        });
    });

    //these functions are for the price range, act similarly to the function above
    $("#price-lower").on("keyup", function() {
        var priceLower = parseInt($("#price-lower").val(),10);
        var priceUpper = parseInt($("#price-upper").val(),10);
        $(".priceAmount").each(function() {
            var price = parseInt($(this).text(),10);
            $(this).closest('.product')[(price >= priceLower && price <= priceUpper) || (price >= priceLower && isNaN(priceUpper)) || (isNaN(priceLower) && price <= priceUpper) || (isNaN(priceLower) && isNaN(priceUpper)) ? 'show':'hide']();
        });
    });

    $("#price-upper").on("keyup", function() {
        var priceLower = parseInt($("#price-lower").val(),10);
        var priceUpper = parseInt($("#price-upper").val(),10);
        $(".priceAmount").each(function() {
            var price = parseInt($(this).text(),10);
            $(this).closest('.product')[(price >= priceLower && price <= priceUpper) || (price >= priceLower && isNaN(priceUpper)) || (isNaN(priceLower) && price <= priceUpper) || (isNaN(priceLower) && isNaN(priceUpper)) ? 'show':'hide']();
        });
    });
</script>