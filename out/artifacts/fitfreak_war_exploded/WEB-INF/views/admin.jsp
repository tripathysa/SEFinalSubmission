<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/templates/header.jsp"%>
<br/><br/>
<div>
    <h1>Administrator Page</h1><br/><br/>
    <p>This is an admin page!</p>

</div>
<br/><br/>
<h3>
    <a href="<c:url value="/admin/productInventory"/>">Product Inventory:</a>
</h3><br/>
<p>view and modify the products</p>
<%@include file="/WEB-INF/views/templates/footer.jsp" %>