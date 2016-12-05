<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/templates/headerProduct.jsp"%>

<br/><br/>
<form id="searchform">
    <input type="text" class ="search" id="search-criteria" name="search" placeholder="Search..">
</form>
<!-- test code for model -->
<!-- Trigger the modal with a button -->
<c:if test="${pageContext.request.userPrincipal.name != null}">
<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Purchase History</button></c:if>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Modal Header</h4>
            </div>
            <div class="modal-body">
                <p>Some text in the modal.</p>

                <div id="productHistory">
                    <h2>Products</h2>
                    <br/>
                    <table style="width:100%">
                        <tr>
                            <th>Product Name</th>
                            <th>Image</th>
                            <th>Amount</th>
                        </tr>

                    <c:forEach items="${productHistory}" var="product">
                        <tr>
                        <%--<div class="product">--%>
                            <td>
                                    ${product.productName}


                            </td>
                            <td>
                                <img src = "<c:url value = "/resources/css/images/${product.productId}.png" />" alt = "image"/>
                            </td>
                            <td>
                                    ${product.productPrice}

                            </td>

                        <%--</div>--%>
                        </tr>
                    </c:forEach>

                    </table>
                </div>


            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>

<!-- test code for model -->


    <div id="products">
        <h2>Products</h2>
        <br/>
    <c:forEach items="${products}" var="product">

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

<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<c:if test="${pageContext.request.userPrincipal.name != null}">
<div id="RecommendedProducts">
    <h2> Recommended Products</h2>
    <br/>
    <marquee behavior=scroll direction="left" scrollamount="18">
    <c:forEach items="${recommendedProduct}" var="product">

        <div class="product">
            <a href="<spring:url value="/productList/viewProduct/${product.productId}" />"><img class="zoom_01" src = "<c:url value = "/resources/css/images/${product.productId}.png" />" data-zoom-image="<c:url value = "/resources/css/images/${product.productId}.png" />" alt = "image"/></a>
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
        </marquee>
</div></c:if>
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