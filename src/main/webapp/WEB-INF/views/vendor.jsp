<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/templates/header.jsp"%>
<br/><br/>

<h2><a href="/fitfreak/vendorReport/${Customer.customerId}">Report Generation</a></h2>
<div class="box">
    <div style="font-size:30px; color:#ff0000; font-weight:bold; font-style:italic;">
        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <h1 style="font-size:32px; color:#ff0000; font-weight:bold; font-style:italic;">
                Welcome: ${pageContext.request.userPrincipal.name} <br/>	<br/>&nbsp;&nbsp; &nbsp;	&nbsp;	&nbsp;	&nbsp;&nbsp;	&nbsp;	&nbsp;	&nbsp;	&nbsp;<a href="<c:url
                            value="/j_spring_security_logout" />"><img src = "<c:url value = "/resources/css/images/logout.png" />"></a>
            </h1>
        </c:if>
        <br/><br/>
        ${Customer.password}
        <h3>
            <section class="color-1">
                <nav class="cl-effect-2">
                    <a class="link3" href="<c:url value="/admin/productInventory"/>">Click here to go to Product Inventory</a>
                </nav>
            </section>


        </h3><br/>
    </div>
</div>

