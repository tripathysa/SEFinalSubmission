<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
    <title>FitFreak Home</title>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="<c:url value = "/resources/css/style.css" />" type="text/css" media="all" />


    <script
            src="https://code.jquery.com/jquery-1.8.3.min.js"
            integrity="sha256-YcbK69I5IXQftf/mYD8WY0/KmEDCv1asggHpJk1trM8="
            crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
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
                    <input style="height:30px; width:270px; font-size:140%;" name="searchTxt" type="text" maxlength="512" id="searchTxt" class="searchField"/>
                    <button id="search" style="height:30px; width:80px; font-size:140%;">Search</button>
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
    <!-- Begin Slider -->
    <div id="slider">
        <!-- Begin Shell -->
        <div class="shell">
            <ul class="slider-items">
                <li>
                    <img src="<c:url value = "/resources/css/images/slide-img1.jpg" />" alt="Slide Image" />
                    <div class="slide-entry">
                        <h2><span>MEGA</span>Flexible</h2>
                        <h6>pure html/css Template suitable for almost every<br /> e-commerce platform</h6>
                        <a href="#" class="button" title="Buy now"><span>Buy now</span></a>
                    </div>
                </li>
                <li>
                    <img src="<c:url value = "/resources/css/images/slide-img2.jpg" />" alt="Slide Image" />
                    <div class="slide-entry">
                        <h4><span>STYLISH</span><span class="small">&amp;</span><span>CLEAN</span>Design</h4>
                        <p>great for  almost every e-shop:<br /> Computer Hardware, Event &amp; Movie Tickets, Automotive,<br /> Office Supplies, Consumer Electronics, and many more</p>
                        <a href="#" class="button" title="Buy now"><span>Buy now</span></a>
                    </div>
                </li>
                <li>
                    <img src="<c:url value = "/resources/css/images/slide-img3.jpg" />" alt="Slide Image" />
                    <div class="slide-entry">
                        <h3><span>PLENTY</span><span class="small">of </span>Color<span class="small"> and</span></h3>
                        <h4 class="short"><span>TEMPLATE</span>Variations</h4>
                        <h5>to suit your design's needs;</h5>
                        <a href="#" class="button" title="Buy now"><span>Buy now</span></a>
                    </div>
                </li>
            </ul>
            <div class="cl">&nbsp;</div>
            <div class="slider-nav">

            </div>
        </div>
        <!-- End Shell -->
    </div>
    <!-- End Slider -->
    <!-- Begin Main -->
    <div id="main" class="shell">
        <!-- Begin Content -->
        <div id="content">
            <div class="post">
                <h2>Welcome to Fitfreak!</h2>
                <img src="<c:url value = "/resources/css/images/post-img.jpg" />" alt="Post Image" />
                <p>Fitfreak a complete solution to all your health needs. From sports gear to health equipments we sell it all.</p>
                <p>The one and only website that takes cares of all your health needs at one stop. Try out aur latest and new features we let you have an experience of a life time for Eshopping.</p>
                <div class="cl">&nbsp;</div>
            </div>
        </div>
        <!-- End Content -->
        <!-- Begin Sidebar -->
        <div id="sidebar">
            <ul>
                <li class="widget">
                    <h2>TOP Brands</h2>
                    <div class="brands">
                        <ul>
                            <li><a href="<spring:url value="/brands/Nike" />" title="Brand 1"><img src="<c:url value = "/resources/css/images/brand-img1.jpg" />" alt="Brand 1" /></a></li>
                            <li><a href="<spring:url value="/brands/Reebok" />" title="Brand 2"><img src="<c:url value = "/resources/css/images/brand-img2.jpg" />" alt="Brand 2" /></a></li>
                            <li><a href="<spring:url value="/brands/Adidas" />" title="Brand 3"><img src="<c:url value = "/resources/css/images/brand-img3.jpg" />" alt="Brand 3" /></a></li>
                            <li><a href="<spring:url value="/brands/Puma" />" title="Brand 4"><img src="<c:url value = "/resources/css/images/brand-img4.jpg" />" alt="Brand 4" /></a></li>
                        </ul>
                        <div class="cl">&nbsp;</div>
                    </div>
                    <a href="#" class="more" title="More Brands">More Brands</a>
                </li>
            </ul>
        </div>
        <!-- End Sidebar -->
        <div class="cl">&nbsp;</div>
        <!-- Begin Products -->
        <div id="products">
            <h2>Featured Products</h2>
            <c:forEach items="${featuredProducts}" var="product">

                <div class="product">
                    <a href="<spring:url value="/product/viewProduct/${product.productId}" />"><img src = "<c:url value = "/resources/css/images/${product.productId}.png" />" /></a>
                    <div class="price">
                        <div class="inner">
                            <span class="title">Price</span>
                            <strong><span>$</span>${product.productPrice}</strong>
                        </div>
                    </div>
                    <div class="info">
                        <p class="productname">${product.productName}</p>
                        <p class="productDesc">${product.productDescription}</p>
                    </div>
                </div>

            </c:forEach>
        </div>

        <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
        <!-- End Products -->
        <!-- Begin Products Slider -->
        <div id="product-slider">
            <h2>Best Products</h2>
            <ul>
                <li>
                    <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-slide1.jpg" />" alt="Product Image" /></a>
                    <div class="info">
                        <h4>Nike HyperDunk</h4>
                        <span class="number">Product 34</span>
                        <span class="price"><span>$</span>159<sup>.99</sup></span>
                        <div class="cl">&nbsp;</div>
                    </div>
                </li>
                <li>
                    <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-slide2.jpg" />" alt="Product Image" /></a>
                    <div class="info">
                        <h4>adidas Marathon 10</h4>
                        <span class="number">Product 45</span>
                        <span class="price"><span>$</span>65<sup>.00</sup></span>
                        <div class="cl">&nbsp;</div>
                    </div>
                </li>
                <li>
                    <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-slide3.jpg" />" alt="Product Image" /></a>
                    <div class="info">
                        <h4>Nike Zoom Hyperfuse</h4>
                        <span class="number">Product 55</span>
                        <span class="price"><span>$</span>85<sup>.50</sup></span>
                        <div class="cl">&nbsp;</div>
                    </div>
                </li>
                <li>
                    <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-slide4.jpg" />" alt="Product Image" /></a>
                    <div class="info">
                        <h4>Puma Drift Cat Ferrari</h4>
                        <span class="number">Product 33</span>
                        <span class="price"><span>$</span>119<sup>.99</sup></span>
                        <div class="cl">&nbsp;</div>
                    </div>
                </li>
                <li>
                    <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-slide5.jpg" />" alt="Product Image" /></a>
                    <div class="info">
                        <h4>adidas Lin Redy 4</h4>
                        <span class="number">Product 21</span>
                        <span class="price"><span>$</span>82<sup>.00</sup></span>
                        <div class="cl">&nbsp;</div>
                    </div>
                </li>
                <li>
                    <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-slide1.jpg" />" alt="Product Image" /></a>
                    <div class="info">
                        <h4>Nike HyperDunk</h4>
                        <span class="number">Product 34</span>
                        <span class="price"><span>$</span>159<sup>.99</sup></span>
                        <div class="cl">&nbsp;</div>
                    </div>
                </li>
                <li>
                    <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-slide3.jpg" />" alt="Product Image" /></a>
                    <div class="info">
                        <h4>adidas Marathon 10</h4>
                        <span class="number">Product 45</span>
                        <span class="price"><span>$</span>65<sup>.00</sup></span>
                        <div class="cl">&nbsp;</div>
                    </div>
                </li>
                <li>
                    <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-slide3.jpg" />" alt="Product Image" /></a>
                    <div class="info">
                        <h4>Nike Zoom Hyperfuse</h4>
                        <span class="number">Product 55</span>
                        <span class="price"><span>$</span>85<sup>.50</sup></span>
                        <div class="cl">&nbsp;</div>
                    </div>
                </li>
                <li>
                    <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-slide4.jpg" />" alt="Product Image" /></a>
                    <div class="info">
                        <h4>Puma Drift Cat Ferrari</h4>
                        <span class="number">Product 33</span>
                        <span class="price"><span>$</span>119<sup>.99</sup></span>
                        <div class="cl">&nbsp;</div>
                    </div>
                </li>
                <li>
                    <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-slide5.jpg" />" alt="Product Image" /></a>
                    <div class="info">
                        <h4>adidas Lin Redy 4</h4>
                        <span class="number">Product 21</span>
                        <span class="price"><span>$</span>82<sup>.00</sup></span>
                        <div class="cl">&nbsp;</div>
                    </div>
                </li>
                <li>
                    <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-slide1.jpg" />" alt="Product Image" /></a>
                    <div class="info">
                        <h4>Nike HyperDunk</h4>
                        <span class="number">Product 34</span>
                        <span class="price"><span>$</span>159<sup>.99</sup></span>
                        <div class="cl">&nbsp;</div>
                    </div>
                </li>
                <li>
                    <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-slide2.jpg" />" alt="Product Image" /></a>
                    <div class="info">
                        <h4>adidas Marathon 10</h4>
                        <span class="number">Product 45</span>
                        <span class="price"><span>$</span>65<sup>.00</sup></span>
                        <div class="cl">&nbsp;</div>
                    </div>
                </li>
                <li>
                    <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-slide3.jpg" />" alt="Product Image" /></a>
                    <div class="info">
                        <h4>Nike Zoom Hyperfuse</h4>
                        <span class="number">Product 55</span>
                        <span class="price"><span>$</span>85<sup>.50</sup></span>
                        <div class="cl">&nbsp;</div>
                    </div>
                </li>
                <li>
                    <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-slide4.jpg" />" alt="Product Image" /></a>
                    <div class="info">
                        <h4>Puma Drift Cat Ferrari</h4>
                        <span class="number">Product 33</span>
                        <span class="price"><span>$</span>119<sup>.99</sup></span>
                        <div class="cl">&nbsp;</div>
                    </div>
                </li>
                <li>
                    <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-slide5.jpg" />" alt="Product Image" /></a>
                    <div class="info">
                        <h4>adidas Lin Redy 4</h4>
                        <span class="number">Product 21</span>
                        <span class="price"><span>$</span>82<sup>.00</sup></span>
                        <div class="cl">&nbsp;</div>
                    </div>
                </li>
            </ul>
            <div class="cl">&nbsp;</div>
        </div>
        <!-- End Products Slider -->
    </div>
    <!-- End Main -->
    <!-- Begin Footer -->
    <br/><br/><br/><br/><br/><br/><br/><br/><br/>
    <div id="footer">

        <div class="copy">
            <!-- Begin Shell -->
            <div class="shell">
                <br/>
                <h1 id="logo1"><a class="notext" href="<c:url value="/" />" title="fitfreak"><img src="<c:url value = "/resources/css/images/logo.png" />" alt="Product Image" /></a><br/><h2>Its on us</h2></h1>
                <p>All rights reserved &reg;</p>
                <div class="cl">&nbsp;</div>
            </div>
            <!-- End Shell -->
        </div>
    </div>
    <!-- End Footer -->
</div>
<!-- End Wrapper -->


<script>
    //this function sends the user to the product list with the specified query
    //when they click on the search button
    $(function() {
        $("#search").click(function() {
            var query = $("#searchTxt").val();
            window.location.href = "product/productList/".concat(query);
        });
        //when user pushes enter in search box, do a query
        $("#searchTxt").on("keydown", function(event){
            var keyCode = ('which' in event) ? event.which : event.keyCode;
            if(keyCode == 13) { //enter = 13
                var query = $("#searchTxt").val();
                window.location.href = "product/productList/".concat(query);
            }
        });
    });



</script>
</body>
</html>
