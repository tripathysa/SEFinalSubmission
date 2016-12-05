<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Saurabh
  Date: 11/2/2016
  Time: 1:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Fitfreak Home!</title>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="<c:url value = "/resources/css/detailstyle.css" />" type="text/css" media="all" />


    <script
            src="https://code.jquery.com/jquery-1.8.3.min.js"
            integrity="sha256-YcbK69I5IXQftf/mYD8WY0/KmEDCv1asggHpJk1trM8="
            crossorigin="anonymous"></script>
    <!--[if IE 6]>
    <script src="<c:url value = "/resources/js/DD_belatedPNG-min.js" />" type="text/javascript" charset="utf-8"></script>
    <![endif]-->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
    <script src="<c:url value = "/resources/js/cufon-yui.js" />" type="text/javascript"></script>
    <script src="<c:url value = "/resources/js/Myriad_Pro_700.font.js" />" type="text/javascript"></script>
    <script src="<c:url value = "/resources/js/jquery.jcarousel.min.js" />" type="text/javascript" charset="utf-8"></script>
    <script src="<c:url value = "/resources/js/functions.js" />" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value = "/resources/css/normalize.css" />" />
    <link rel="stylesheet" type="text/css" href="<c:url value = "/resources/css/demo.css" />" />
    <link rel="stylesheet" type="text/css" href="<c:url value = "/resources/css/component.css" />" />

    <script src="<c:url value = "/resources/js/modernizr.custom.js" />"></script>
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
                    <c:if test="${pageContext.request.userPrincipal.name != null}">
                    <li><a href="<c:url value = "/product/productList" />" title="products"><span>Get all Products</span></a></li></c:if>
                    <c:if test="${pageContext.request.userPrincipal.name == null}">
                        <li><a href="<c:url value="/register" />" title="register"><span>Sign Up</span></a></li>
                        <li><a href="<c:url value="/login" />" title="Login"><span>Login</span></a></li></c:if>
                </ul>
            </div>
            <div class="cl">&nbsp;</div>
            <p id="cart"><span class="profile">Welcome
                <c:if test="${pageContext.request.userPrincipal.name != null}">
                    <a href="<c:url value = "/product/productList" />" title="Profile Link">${pageContext.request.userPrincipal.name}</a>
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
                <li><div>
                    <input style="height:30px; width:250px; font-size:140%;" name="searchTxt" type="text" maxlength="512" id="searchTxt" class="searchField"/>
                    <button style="height:30px; width:70px; font-size:140%;">Search</button>
                </div></li>
                <li>
                    <a href="apparelCategory" title="Apparel">Apparel</a>
                    <div class="dd">
                        <ul>
                            <li><a href="menCategory" title="men">Men</a></li>
                            <li><a href="womenCategory" title="women">Women</a></li>
                            <li><a href="kidsCategory" title="kids">Kids</a></li>
                            <li><a href="wearablesCategory" title="wearables">Wearables</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="sportsCategory" title="Sports">Sports</a>
                    <div class="dd">
                        <ul>
                            <li><a href="soccerCategory" title="soccer">Soccer</a></li>
                            <li><a href="basketballCategory" title="basketball">Basketball</a></li>
                            <li><a href="baseballCategory" title="baseball">Baseball</a></li>
                            <li><a href="footballCategory" title="football">Football</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="nutritionCategory" title="nutrition">Nutrition</a>
                    <div class="dd">
                        <ul>
                            <li><a href="drinksCategory" title="drinks">Drinks</a></li>
                            <li><a href="supplementsCategory" title="supplements">Supplements</a></li>
                            <li><a href="health foodsCategory" title="health foods">Health Foods</a></li>
                            <li><a href="energy barsCategory" title="energy bars">Energy Bars</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="home fitnessCategory" title="home fitness">Home Fitness</a>
                    <div class="dd">
                        <ul>
                            <li><a href="weightsCategory" title="weights">Weights</a></li>
                            <li><a href="machinesCategory" title="machines">Machines</a></li>
                            <li><a href="yogaCategory" title="yoga">Yoga</a></li>
                            <li><a href="boxingCategory" title="boxing">Boxing</a></li>
                        </ul>
                    </div>
                </li>


                <li class="sale-item"><a href="#" title="Sale">Sale</a></li>
            </ul>

            <div class="cl">&nbsp;</div>
        </div>
        <!-- End Shell -->
    </div>
    <!-- End Navigation -->
    <!-- End Navigation -->