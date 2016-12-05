<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/templates/header.jsp"%>

<br/><br/>
<form id="searchform">
    <input type="text" class ="search" id="search-criteria" name="search" placeholder="Search..">
</form>

<div id="products">
    <h2>Products By Brand</h2>
    <br/>
    <c:forEach items="${brandProducts}" var="product">

        <div class="product">
            <a href="<spring:url value="/product/viewProduct/${product.productId}" />"><img class="zoom_01" src = "<c:url value = "/resources/css/images/${product.productId}.png" />" data-zoom-image="<c:url value = "/resources/css/images/${product.productId}.png" />" alt = "image"/></a>
            <div class="price">
                <div class="inner">
                    <span class="title">Price</span>
                    <strong><span>$</span>${product.productPrice}</strong>
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
</script>