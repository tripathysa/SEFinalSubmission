<!-- Begin Footer -->
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
            window.location.href = "/fitfreak/product/productList/".concat(query);
        });
        //when user pushes enter in search box, do a query
        $("#searchTxt").on("keydown", function(event){
            var keyCode = ('which' in event) ? event.which : event.keyCode;
            if(keyCode == 13) { //enter = 13
                var query = $("#searchTxt").val();
                window.location.href = "/fitfreak/product/productList/".concat(query);
            }
        });
    });
</script>
</body>
</html>
