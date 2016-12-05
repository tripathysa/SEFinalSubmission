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
    <title>CSS Free Templates with jQuery Slider</title>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <link rel="shortcut icon" href="<c:url value = "/resources/css/images/favicon.ico" />" >
    <link rel="stylesheet" href="<c:url value = "/resources/css/style.css" />" type="text/css" media="all" />


    <script
            src="https://code.jquery.com/jquery-1.8.3.min.js"
            integrity="sha256-YcbK69I5IXQftf/mYD8WY0/KmEDCv1asggHpJk1trM8="
            crossorigin="anonymous"></script>
    <!--[if IE 6]>
    <script src="<c:url value = "/resources/js/DD_belatedPNG-min.js" />" type="text/javascript" charset="utf-8"></script>
    <![endif]-->
    <script src="<c:url value = "/resources/js/cufon-yui.js" />" type="text/javascript"></script>
    <script src="<c:url value = "/resources/js/Myriad_Pro_700.font.js" />" type="text/javascript"></script>
    <script src="<c:url value = "/resources/js/jquery.jcarousel.min.js" />" type="text/javascript" charset="utf-8"></script>
    <script src="<c:url value = "/resources/js/functions.js" />" type="text/javascript" charset="utf-8"></script>

</head>
<body>
<!-- Begin Wrapper -->
<div id="wrapper">
    <!-- Begin Header -->
    <div id="header">
        <!-- Begin Shell -->
        <div class="shell">
            <h1 id="logo"><a class="notext" href="#" title="iShop">iShop</a>Its on us....</h1>
            <div id="top-nav">
                <ul>
                    <li class="active"><a href="#" title="Home"><span>Home</span></a></li>
                    <li><a href="<c:url value = "/productlist" />" title="Promotions &amp; News"><span>Get all Products</span></a></li>
                    <li><a href="#" title="Contact"><span>Contact</span></a></li>
                    <li><a href="#" title="Blog"><span>Blog</span></a></li>
                </ul>
            </div>
            <div class="cl">&nbsp;</div>
            <p id="cart"><span class="profile">Welcome, <a href="#" title="Profile Link">Guest</a> . </span><span class="shopping">Shopping Cart (0) <a href="#" title="Shopping Cart">$0.00</a></span></p>
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