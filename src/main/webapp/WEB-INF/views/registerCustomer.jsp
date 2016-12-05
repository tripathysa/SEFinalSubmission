<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign up at Fitfreak</title>
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
    <h3> Sign up at Fitfreak</h3>
    <p class="lead">Fill the below information to get registered:</p>
    <form:form action="${pageContext.request.contextPath}/register" method="post"
               commandName="customer">
        <fieldset>
            <legend><span class="number">1</span> Basic Details</legend>
            <label for="name">Name</label>
            <form:input type ="text" path="customerName" id="name" class="form-Control"/>

            <label for="email">Email</label>
            <form:input type ="text" path="customerEmail" id="email" class="form-Control"/>

            <label for="phone">Phone</label>
            <form:input type ="text" path="customerPhone" id="phone" class="form-Control"/>

            <label for="username">Username</label>
            <form:input type ="text" path="username" id="username" class="form-Control"/>

            <label for="password">password</label>
            <form:password path="password" id="password" class="form-Control"/>


        </fieldset><br/>

        <fieldset>
            <label for="userType">User Role</label>
            <form:select path="userType" id="userType" class="form-Control">
                <option value="Vendor">Vendor</option>
                <option value="Customer">Customer</option>
            </form:select>
        </fieldset><br/>

        <fieldset>
            <legend><span class="number">2</span> Billing Address</legend>

            <label for="billingStreet">Street name</label>
            <form:input type ="text" path="billingAddress.streetName" id="billingStreet" class="form-Control"/>

            <label for="billingApartmentNumber">Apartment Number</label>
            <form:input type ="text" path="billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control"/>

            <label for="billingCity">City</label>
            <form:input type ="text" path="billingAddress.city" id="billingCity" class="form-Control"/>

            <label for="billingState">State</label>
            <form:input type ="text" path="billingAddress.state" id="billingState" class="form-Control"/>

            <label for="billingCountry">Country</label>
            <form:input type ="text" path="billingAddress.country" id="billingCountry" class="form-Control"/>

            <label for="billingZip">ZipCode</label>
            <form:input type ="text" path="billingAddress.zipCode" id="billingZip" class="form-Control"/>


        </fieldset>

        <fieldset>
            <legend><span class="number">3</span> Shipping Address</legend>

            <label for="shippingStreet">Street name</label>
            <form:input type ="text" path="shippingAddress.streetName" id="shippingStreet" class="form-Control"/>

            <label for="shippingApartmentNumber">Apartment Number</label>
            <form:input type ="text" path="shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-Control"/>

            <label for="shippingCity">City</label>
            <form:input type ="text" path="shippingAddress.city" id="shippingCity" class="form-Control"/>

            <label for="shippingState">State</label>
            <form:input type ="text" path="shippingAddress.state" id="shippingState" class="form-Control"/>

            <label for="shippingCountry">Country</label>
            <form:input type ="text" path="shippingAddress.country" id="shippingCountry" class="form-Control"/>

            <label for="shippingZip">ZipCode</label>
            <form:input type ="text" path="shippingAddress.zipCode" id="shippingZip" class="form-Control"/>

        </fieldset>

            <input type="submit" value="submit">
            <a href="<c:url value="/" />" class="btn btn-default">Cancel</a>


    </form:form>
</div>


</body>
</html>
