<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/templates/header.jsp"%>
<br/><br/>

<div class="box">
    <div style="font-size:30px; color:#ff0000; font-weight:bold; font-style:italic;">
            <h1 style="font-size:32px; color:#ff0000; font-weight:bold; font-style:italic;">
                &nbsp;Registration Successful! <br/><br/><br/>&nbsp;Welcome to Fitfreak!
            </h1>

        <br/><br/>
        <h3>
            <section class="color-1">
                <nav class="cl-effect-2">
                    <a href="<spring:url value="/product/productList" />"><img src="<c:url value = "/resources/css/images/continueshopping.png" />" /></a>
                </nav>
            </section>


        </h3><br/>
    </div>
</div>

