<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product Detail</title>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="<c:url value = "/resources/css/detailstyle.css" />" type="text/css" media="all" />
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!--[if IE 6]>
    <script src="<c:url value = "/resources/js/DD_belatedPNG-min.js" />" type="text/javascript" charset="utf-8"></script>
    <![endif]-->
    <script src="<c:url value = "/resources/js/cufon-yui.js" />" type="text/javascript"></script>
    <script src="<c:url value = "/resources/js/Myriad_Pro_700.font.js" />" type="text/javascript"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <script src="<c:url value="/resources/js/controller.js" />"></script>
    <script src="<c:url value="/resources/js/jquery.elevatezoom.js" />"></script>

</head>
<body>
<!-- Begin Wrapper -->
<div id="wrapper">
    <!-- Begin Header -->
    <div id="header">
        <!-- Begin Shell -->
        <div class="shell">
            <h1 id="logo"><a class="notext" href="<c:url value="/" />" title="fitfreak">fitfreak</a><i>Its on us</i></h1>
            <div id="top-nav">
                <ul>
                    <li class="active"><a href="<c:url value="/" />" title="Home"><span>Home</span></a></li>
                    <li><a href="<c:url value = "/product/productList" />" title="products"><span>Get all Products</span></a></li>
                    <c:if test="${pageContext.request.userPrincipal.name == null}">
                        <li><a href="<c:url value="/register" />" title="register"><span>Sign Up</span></a></li>
                        <li><a href="<c:url value="/login" />" title="Login"><span>Login</span></a></li></c:if>
                </ul>
            </div>
            <div class="cl">&nbsp;</div>
            <p id="cart"><span class="profile">Welcome
                <c:if test="${pageContext.request.userPrincipal.name != null}">
                    <a title="Profile Link">${pageContext.request.userPrincipal.name}</a>
                    <a href="<c:url value="/j_spring_security_logout" />" title="logout">| Logout</a>
                    <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                        <span class="shopping"><a href="<c:url value="/customer/cart" />" title="Shopping Cart">Shopping Cart | </a></span>
                    </c:if>
                    <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
                        <span><a href="<c:url value="/admin" />" title="admin">Administrator</a></span>
                    </c:if>
                </c:if>
                </span></p>
        </div>
        <!-- End Shell -->
    </div>
    <!-- End Header -->
    <!-- Begin Navigation -->
    <div id="navigation">
        <!-- Begin Shell -->
        <div class="shell">
            <ul>
                <li class="active"><a href="#" title="Mens">Mens</a></li>
                <li><a href="#" title="Ladies">Ladies</a></li>
                <li><a href="#" title="Kids">Kids</a></li>
                <li>
                    <a href="#" title="Football">Football</a>
                    <div class="dd">
                        <ul>
                            <li><a href="#" title="Drop down menu 1">Drop down menu 1</a></li>
                            <li><a href="#" title="Drop down menu 2">Drop down menu 2</a></li>
                            <li>
                                <a href="#" title="Drop down menu 3">Drop down menu 3</a>
                                <div class="dd">
                                    <ul>
                                        <li><a href="#" title="Drop down menu 1">Drop down menu 1</a></li>
                                        <li><a href="#" title="Drop down menu 2">Drop down menu 2</a></li>
                                        <li><a href="#" title="Drop down menu 3">Drop down menu 3</a></li>
                                        <li><a href="#" title="Drop down menu 4">Drop down menu 4</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li><a href="#" title="Drop down menu 4">Drop down menu 4</a></li>
                            <li><a href="#" title="Drop down menu 5">Drop down menu 5</a></li>
                        </ul>
                    </div>
                </li>
                <li><a href="#" title="Accessories">Accessories</a></li>
                <li><a href="#" title="Sports">Sports</a></li>
                <li><a href="#" title="Brands">Brands</a></li>
                <li><a href="#" title="Promos">Promos</a></li>
                <li><a href="#" title="Clinic">Clinic</a></li>
                <li class="sale-item"><a href="#" title="Sale">Sale</a></li>
            </ul>
            <div class="cl">&nbsp;</div>
        </div>
        <!-- End Shell -->
    </div>
    <!-- End Navigation -->

    <!-- End Main -->
    <div class="container-wrapper">
        <br class="container">
        <div class="page-header">
            <h1>Product Detail</h1>

            <p class="lead">Here is the detail information of the product!</p>
        </div>

        <div class="container" ng-app="cartApp">
            <div class="row">
                <div class="col-md-5">

                    <img id="zoom_01" src = "<c:url value = "/resources/css/images/${product.productId}.png" />" data-zoom-image="<c:url value = "/resources/css/images/${product.productId}.png" />" alt = "image" style="width:100%"/>
                </div>

                <div class="col-md-5">
                    <h3>${product.productName}</h3>
                    <p>${product.productDescription}</p>
                    <p>
                        <strong>Manufacturer</strong> : ${product.productManufacturer}
                    </p>
                    <p>
                        <strong>Category</strong> : ${product.productCategory}
                    </p>
                    <p>
                        <strong>Condition</strong> : ${product.productCondition}
                    </p>
                    <h4>${product.productPrice} USD</h4>
                    <br>

                    <c:set var="role" scope = "page" value="${param.role}"/>
                    <c:set var="url" scope = "page" value="/product/productList"/>
                    <c:if test="${role='admin'}">
                        <c:set var="url" scope = "page" value="/admin/productInventory"/>
                    </c:if>
                    <p ng-controller="cartCtrl">
                        <a class="btn btn-default" href="<c:url value="${url}"/>"><img src="<c:url value = "/resources/css/images/back.PNG" />" alt="Product Image"/></a>
                        <a href="#" class="btn btn-default" ng-click="addToCart('${product.productId}')"><img src="<c:url value = "/resources/css/images/addtocart.PNG" />" alt="Product Image"/></a>
                        <a href="<spring:url value="/customer/cart" />" class="btn btn-default"><img src="<c:url value = "/resources/css/images/viewcart.png" />" alt="Product Image"/></a>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <br/><br/><br/><br/><br/>

    <script>
        $('#zoom_01').elevateZoom({
            zoomType: "inner",
            cursor: "crosshair",
            zoomWindowFadeIn: 500,
            zoomWindowFadeOut: 750
        });
    </script>
<%@include file="/WEB-INF/views/templates/footer.jsp"%>