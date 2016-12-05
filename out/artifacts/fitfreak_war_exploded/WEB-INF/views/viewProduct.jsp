<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CSS Free Templates with jQuery Slider</title>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <link rel="shortcut icon" href="<c:url value = "/resources/css/images/favicon.ico" />" >
    <link rel="stylesheet" href="<c:url value = "/resources/css/detailstyle.css" />" type="text/css" media="all" />
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!--[if IE 6]>
    <script src="<c:url value = "/resources/js/DD_belatedPNG-min.js" />" type="text/javascript" charset="utf-8"></script>
    <![endif]-->
    <script src="<c:url value = "/resources/js/cufon-yui.js" />" type="text/javascript"></script>
    <script src="<c:url value = "/resources/js/Myriad_Pro_700.font.js" />" type="text/javascript"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

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

    <!-- End Main -->
    <div class="container-wrapper">
        <br class="container">
            <div class="page-header">
                <h1>Product Detail</h1>

                <p class="lead">Here is the detail information of the product!</p>
            </div>

            <div class="container">
                <div class="row">
                    <div class="col-md-5">
                        <img src="#" alt="image" style="width:100%; height: 300px" />
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
                    </div>
                </div>
            </div>
            <br/><br/><br/><br/><br/>
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
