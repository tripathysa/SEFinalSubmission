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
    <h3> Checkout Started</h3>
    <p class="lead">Customer Details</p>
    <form:form commandName="order">
        <fieldset>
            <legend><span class="number">1</span> Basic Details</legend>
            <label for="name">Name</label>
            <form:input type ="text" path="cart.customer.customerName" id="name" class="form-Control"/>

            <label for="email">Email</label>
            <form:input type ="text" path="cart.customer.customerEmail" id="email" class="form-Control"/>

            <label for="phone">Phone</label>
            <form:input type ="text" path="cart.customer.customerPhone" id="phone" class="form-Control"/>


        </fieldset><br/>


        <fieldset>
            <legend><span class="number">2</span> Billing Address</legend>

            <label for="billingStreet">Street name</label>
            <form:input type ="text" path="cart.customer.billingAddress.streetName" id="billingStreet" class="form-Control"/>

            <label for="billingApartmentNumber">Apartment Number</label>
            <form:input type ="text" path="cart.customer.billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control"/>

            <label for="billingCity">City</label>
            <form:input type ="text" path="cart.customer.billingAddress.city" id="billingCity" class="form-Control"/>

            <label for="billingState">State</label>
            <form:input type ="text" path="cart.customer.billingAddress.state" id="billingState" class="form-Control"/>

            <label for="billingCountry">Country</label>
            <form:input type ="text" path="cart.customer.billingAddress.country" id="billingCountry" class="form-Control"/>

            <label for="billingZip">ZipCode</label>
            <form:input type ="text" path="cart.customer.billingAddress.zipCode" id="billingZip" class="form-Control"/>


        </fieldset>
        <input type="hidden" name="_flowExecutionKey" />

        <input type="submit" value="Next" name="_eventId_customerInfoCollected">
        <button class="btn btn-default" name="_eventId_cancel">Cancel</button>


    </form:form>
</div>


</body>
</html>
