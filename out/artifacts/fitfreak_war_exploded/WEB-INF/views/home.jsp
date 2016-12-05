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
                <h2>Welcome!</h2>
                <img src="<c:url value = "/resources/css/images/post-img.jpg" />" alt="Post Image" />
                <p>Lestibulum vel libero posuere velit faucibus pellentesque. Duis eleifend libero vitae justo porta eget interdum ligula porta. Fusce tristique, ante sit amet hendrerit suscipit, leo metus vehicula sem, eget scelerisque felis leo id magna. Proin imperdiet ullamcorper tellus sed consectetur. Aliquam erat volutpat. Integer orci urna, posuere sed bibendum id, tincidunt non augue. </p>
                <p>Cras mauris sem, posuere vel semper sed, condimentum non dui. Suspendisse vestibulum ligula eget urna posuere sagittis. Suspendisse sed nisl massa. <a href="#" class="more" title="Read More">Read More</a></p>
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
                            <li><a href="#" title="Brand 1"><img src="<c:url value = "/resources/css/images/brand-img1.jpg" />" alt="Brand 1" /></a></li>
                            <li><a href="#" title="Brand 2"><img src="<c:url value = "/resources/css/images/brand-img2.jpg" />" alt="Brand 2" /></a></li>
                            <li><a href="#" title="Brand 3"><img src="<c:url value = "/resources/css/images/brand-img3.jpg" />" alt="Brand 3" /></a></li>
                            <li><a href="#" title="Brand 4"><img src="<c:url value = "/resources/css/images/brand-img4.jpg" />" alt="Brand 4" /></a></li>
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
            <div class="product">
                <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-img1.jpg" />" alt="Product Image" /></a>
                <div class="price">
                    <div class="inner">
                        <span class="title">Price</span>
                        <strong><span>$</span>85<sup>.00</sup></strong>
                    </div>
                </div>
                <div class="info">
                    <p>Nike Shox Turbo IX</p>
                    <p class="number">Product 20</p>
                </div>
            </div>
            <div class="product">
                <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-img2.jpg" />" alt="Product Image" /></a>
                <div class="price">
                    <div class="inner">
                        <span class="title">Price</span>
                        <strong><span>$</span>119<sup>.99</sup></strong>
                    </div>
                </div>
                <div class="info">
                    <p>Nike Air Max Skyline</p>
                    <p class="number">Product 24</p>
                </div>
            </div>
            <div class="product">
                <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-img3.jpg" />" alt="Product Image" /></a>
                <div class="price">
                    <div class="inner">
                        <span class="title">Price</span>
                        <strong><span>$</span>109<sup>.00</sup></strong>
                    </div>
                </div>
                <div class="info">
                    <p>Nike Air Max <br />Preview</p>
                    <p class="number">Product 15</p>
                </div>
            </div>
            <div class="product">
                <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-img4.jpg" />" alt="Product Image" /></a>
                <div class="price">
                    <div class="inner">
                        <span class="title">Price</span>
                        <strong><span>$</span>75<sup>.00</sup></strong>
                    </div>
                </div>
                <div class="info">
                    <p>Puma Cell Sorai</p>
                    <p class="number">Product 18</p>
                </div>
            </div>
            <div class="product">
                <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-img5.jpg" />" alt="Product Image" /></a>
                <div class="price">
                    <div class="inner">
                        <span class="title">Price</span>
                        <strong><span>$</span>69<sup>.99</sup></strong>
                    </div>
                </div>
                <div class="info">
                    <p>adidas Clima Cool Chill</p>
                    <p class="number">Product 34</p>
                </div>
            </div>
            <div class="cl">&nbsp;</div>
            <div class="product">
                <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-img1.jpg" />" alt="Product Image" /></a>
                <div class="price">
                    <div class="inner">
                        <span class="title">Price</span>
                        <strong><span>$</span>85<sup>.00</sup></strong>
                    </div>
                </div>
                <div class="info">
                    <p>Nike Shox Turbo IX</p>
                    <p class="number">Product 20</p>
                </div>
            </div>
            <div class="product">
                <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-img2.jpg" />" alt="Product Image" /></a>
                <div class="price">
                    <div class="inner">
                        <span class="title">Price</span>
                        <strong><span>$</span>119<sup>.99</sup></strong>
                    </div>
                </div>
                <div class="info">
                    <p>Nike Air Max Skyline</p>
                    <p class="number">Product 24</p>
                </div>
            </div>
            <div class="product">
                <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-img3.jpg" />" alt="Product Image" /></a>
                <div class="price">
                    <div class="inner">
                        <span class="title">Price</span>
                        <strong><span>$</span>109<sup>.00</sup></strong>
                    </div>
                </div>
                <div class="info">
                    <p>Nike Air Max <br />Preview</p>
                    <p class="number">Product 15</p>
                </div>
            </div>
            <div class="product">
                <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-img4.jpg" />" alt="Product Image" /></a>
                <div class="price">
                    <div class="inner">
                        <span class="title">Price</span>
                        <strong><span>$</span>75<sup>.00</sup></strong>
                    </div>
                </div>
                <div class="info">
                    <p>Puma Cell Sorai</p>
                    <p class="number">Product 18</p>
                </div>
            </div>
            <div class="product">
                <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-img5.jpg" />" alt="Product Image" /></a>
                <div class="price">
                    <div class="inner">
                        <span class="title">Price</span>
                        <strong><span>$</span>69<sup>.99</sup></strong>
                    </div>
                </div>
                <div class="info">
                    <p>adidas Clima Cool Chill</p>
                    <p class="number">Product 34</p>
                </div>
            </div>
            <div class="cl">&nbsp;</div>
            <div class="product">
                <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-img1.jpg" />" alt="Product Image" /></a>
                <div class="price">
                    <div class="inner">
                        <span class="title">Price</span>
                        <strong><span>$</span>85<sup>.00</sup></strong>
                    </div>
                </div>
                <div class="info">
                    <p>Nike Shox Turbo IX</p>
                    <p class="number">Product 20</p>
                </div>
            </div>
            <div class="product">
                <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-img2.jpg" />" alt="Product Image" /></a>
                <div class="price">
                    <div class="inner">
                        <span class="title">Price</span>
                        <strong><span>$</span>119<sup>.99</sup></strong>
                    </div>
                </div>
                <div class="info">
                    <p>Nike Air Max Skyline</p>
                    <p class="number">Product 24</p>
                </div>
            </div>
            <div class="product">
                <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-img3.jpg" />" alt="Product Image" /></a>
                <div class="price">
                    <div class="inner">
                        <span class="title">Price</span>
                        <strong><span>$</span>109<sup>.00</sup></strong>
                    </div>
                </div>
                <div class="info">
                    <p>Nike Air Max <br />Preview</p>
                    <p class="number">Product 15</p>
                </div>
            </div>
            <div class="product">
                <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-img4.jpg" />" alt="Product Image" /></a>
                <div class="price">
                    <div class="inner">
                        <span class="title">Price</span>
                        <strong><span>$</span>75<sup>.00</sup></strong>
                    </div>
                </div>
                <div class="info">
                    <p>Puma Cell Sorai</p>
                    <p class="number">Product 18</p>
                </div>
            </div>
            <div class="product">
                <a href="#" title="Product Link"><img src="<c:url value = "/resources/css/images/product-img5.jpg" />" alt="Product Image" /></a>
                <div class="price">
                    <div class="inner">
                        <span class="title">Price</span>
                        <strong><span>$</span>69<sup>.99</sup></strong>
                    </div>
                </div>
                <div class="info">
                    <p>adidas Clima Cool Chill</p>
                    <p class="number">Product 34</p>
                </div>
            </div>
            <div class="cl">&nbsp;</div>
        </div>
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
    <div id="footer">
        <div class="boxes">
            <!-- Begin Shell -->
            <div class="shell">
                <div class="box post-box">
                    <h2>About ISHOP</h2>
                    <div class="box-entry">
                        <img src="<c:url value = "/resources/css/images/bottom-logo.png" />" alt="IShop Logo" />
                        <p>Nulla porttitor pretium mattis. Mauris lorem massa, ultricies non mattis bibendum, semper ut erat. Morbi vulputate placerat ligula. Fusce <br />convallis, nisl a pellentesque viverra, ipsum leo sodales sapien, vitae egestas dolor nisl eu tortor. Etiam ut elit vitae nisl tempor tincidunt. Nunc sed elementum est. Phasellus sodales viverra mauris nec dictum. Fusce a leo libero. Cras accumsan enim nec massa semper eu hen-drerit nisl faucibus. Sed lectus ligula, consequat eget bibendum eu, consequat nec nisl. In sed consequat elit. Praesent nec iaculis sapien. Curabitur gravida pretium tincidunt. </p>
                        <div class="cl">&nbsp;</div>
                    </div>
                </div>
                <div class="box social-box">
                    <h2>We are Social</h2>
                    <ul>
                        <li><a href="#" title="Facebook"><img src="<c:url value = "/resources/css/images/social-icon1.png" />" alt="Facebook" /><span>Facebook</span><span class="cl">&nbsp;</span></a></li>
                        <li><a href="#" title="Twitter"><img src="<c:url value = "/resources/css/images/social-icon2.png" />" alt="Twitter" /><span>Twitter</span><span class="cl">&nbsp;</span></a></li>
                        <li><a href="#" title="Behance"><img src="<c:url value = "/resources/css/images/social-icon3.png" />" alt="Behance" /><span>Behance</span><span class="cl">&nbsp;</span></a></li>
                        <li><a href="#" title="RSS"><img src="<c:url value = "/resources/css/images/social-icon4.png" />" alt="RSS" /><span>RSS</span><span class="cl">&nbsp;</span></a></li>
                        <li><a href="#" title="Digg"><img src="<c:url value = "/resources/css/images/social-icon5.png" />" alt="Digg" /><span>Digg</span><span class="cl">&nbsp;</span></a></li>
                        <li><a href="#" title="Flickr"><img src="<c:url value = "/resources/css/images/social-icon6.png" />" alt="Flickr" /><span>Flickr</span><span class="cl">&nbsp;</span></a></li>
                        <li><a href="#" title="Blogger"><img src="<c:url value = "/resources/css/images/social-icon7.png" />" alt="Blogger" /><span>Blogger</span><span class="cl">&nbsp;</span></a></li>
                    </ul>
                    <div class="cl">&nbsp;</div>
                </div>
                <div class="box">
                    <h2>Information</h2>
                    <ul>
                        <li><a href="#" title="Special Offers">Special Offers</a></li>
                        <li><a href="#" title="Privacy Policy">Privacy Policy</a></li>
                        <li><a href="#" title="Terms &amp; Conditions">Terms &amp; Conditions</a></li>
                        <li><a href="#" title="Contact Us">Contact Us</a></li>
                        <li><a href="#" title="Log In">Log In</a></li>
                        <li><a href="#" title="Account">Account</a></li>
                        <li><a href="#" title="Basket">Basket</a></li>
                    </ul>
                </div>
                <div class="box last-box">
                    <h2>Categories</h2>
                    <ul>
                        <li><a href="#" title="Mens">Mens</a></li>
                        <li><a href="#" title="Ladies">Ladies</a></li>
                        <li><a href="#" title="Kids">Kids</a></li>
                        <li><a href="#" title="Football">Football</a></li>
                        <li><a href="#" title="Accessories">Accessories</a></li>
                        <li><a href="#" title="Sports">Sports</a></li>
                    </ul>
                </div>
                <div class="cl">&nbsp;</div>
            </div>
            <!-- End Shell -->
        </div>
        <div class="copy">
            <!-- Begin Shell -->
            <div class="shell">
                <div class="carts">
                    <ul>
                        <li><span>We accept</span></li>
                        <li><a href="#" title="PayPal"><img src="<c:url value = "/resources/css/images/cart-img1.jpg" />" alt="PayPal" /></a></li>
                        <li><a href="#" title="VISA"><img src="<c:url value = "/resources/css/images/cart-img2.jpg" />" alt="VISA" /></a></li>
                        <li><a href="#" title="MasterCard"><img src="<c:url value = "/resources/css/images/cart-img3.jpg" />" alt="MasterCard" /></a></li>
                    </ul>
                </div>
                <p>&copy; Sitename.com. Design by <a href="http://css-free-templates.com/">CSS-FREE-TEMPLATES.COM</a></p>
                <div class="cl">&nbsp;</div>
            </div>
            <!-- End Shell -->
        </div>
    </div>
    <!-- End Footer -->
</div>
<!-- End Wrapper -->
</body>
</html>
