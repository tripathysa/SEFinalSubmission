<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Details</title>
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
    <p class="lead">Customer Details</p>
    <form:form commandName="order">
<br/>


        <fieldset>
            <legend><span class="number">1</span> Shipping Address</legend>

            <label for="shippingStreet">Street name</label>
            <form:input type ="text" path="cart.customer.shippingAddress.streetName" id="shippingStreet" class="form-Control"/>

            <label for="shippingApartmentNumber">Apartment Number</label>
            <form:input type ="text" path="cart.customer.shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-Control"/>

            <label for="shippingCity">City</label>
            <form:input type ="text" path="cart.customer.shippingAddress.city" id="shippingCity" class="form-Control"/>

            <label for="shippingState">State</label>
            <form:input type ="text" path="cart.customer.shippingAddress.state" id="shippingState" class="form-Control"/>

            <label for="shippingCountry">Country</label>
            <form:input type ="text" path="cart.customer.shippingAddress.country" id="shippingCountry" class="form-Control"/>

            <label for="shippingZip">ZipCode</label>
            <form:input type ="text" path="cart.customer.shippingAddress.zipCode" id="shippingZip" class="form-Control"/>


        </fieldset>
        <input type="hidden" name="_flowExecutionKey" />
        <button class="btn btn-default" name="_eventId_backToCollectCustomerInfo">Back</button>

        <input type="submit" value="Next" name="_eventId_shippingDetailCollected">
        <button class="btn btn-default" name="_eventId_cancel">Cancel</button>


    </form:form>
</div>


</body>
</html>
