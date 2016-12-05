<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="<c:url value = "/resources/css/detailstyle.css" />" type="text/css" media="all" />
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!--[if IE 6]>
    <script src="<c:url value = "/resources/js/DD_belatedPNG-min.js" />" type="text/javascript" charset="utf-8"></script>
    <![endif]-->
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    <script src="<c:url value="/resources/js/index.js" />"></script>


    <style>
        /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
        * {
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        body {
            background: #333;
            font: 100%/1 "Helvetica Neue", Arial, sans-serif;
        }

        .login {
            position: absolute;
            top: 50%;
            left: 50%;
            margin: -10rem 0 0 -10rem;
            width: 20rem;
            height: 20rem;
            padding: 20px;
            background: #fff;
            border-radius: 5px;
            overflow: hidden;
        }
        .login:hover > .login-header, .login.focused > .login-header {
            width: 2rem;
        }
        .login:hover > .login-header > .text, .login.focused > .login-header > .text {
            font-size: 1rem;
            transform: rotate(-90deg);
        }
        .login.loading > .login-header {
            width: 20rem;
        }
        .login.loading > .login-header > .text {
            display: none;
        }
        .login.loading > .login-header > .loader {
            display: block;
        }

        .login-header {
            position: absolute;
            left: 0;
            top: 0;
            z-index: 1;
            width: 20rem;
            height: 20rem;
            background: orange;
            transition: width 0.5s ease-in-out;
        }
        .login-header > .text {
            display: block;
            width: 100%;
            height: 100%;
            font-size: 5rem;
            text-align: center;
            line-height: 20rem;
            color: #fff;
            transition: all 0.5s ease-in-out;
        }
        .login-header > .loader {
            display: none;
            position: absolute;
            left: 5rem;
            top: 5rem;
            width: 10rem;
            height: 10rem;
            border: 2px solid #fff;
            border-radius: 50%;
            animation: loading 2s linear infinite;
        }
        .login-header > .loader:after {
            content: "";
            position: absolute;
            left: 4.5rem;
            top: -0.5rem;
            width: 1rem;
            height: 1rem;
            background: #fff;
            border-radius: 50%;
            border-right: 2px solid orange;
        }
        .login-header > .loader:before {
            content: "";
            position: absolute;
            left: 4rem;
            top: -0.5rem;
            width: 0;
            height: 0;
            border-right: 1rem solid #fff;
            border-top: 0.5rem solid transparent;
            border-bottom: 0.5rem solid transparent;
        }

        @keyframes loading {
            50% {
                opacity: 0.5;
            }
            100% {
                transform: rotate(360deg);
            }
        }
        .login-form {
            margin: 0 0 0 2rem;
            padding: 0.5rem;
        }

        .login-input {
            display: block;
            width: 100%;
            font-size: 2rem;
            padding: 0.5rem 1rem;
            box-shadow: none;
            border-color: #ccc;
            border-width: 0 0 2px 0;
        }
        .login-input + .login-input {
            margin: 10px 0 0;
        }
        .login-input:focus {
            outline: none;
            border-bottom-color: orange;
        }

        .login-btn {
            position: absolute;
            right: 1rem;
            bottom: 1rem;
            width: 5rem;
            height: 5rem;
            border: none;
            background: orange;
            border-radius: 50%;
            font-size: 0;
            border: 0.6rem solid transparent;
            transition: all 0.3s ease-in-out;
        }
        .login-btn:after {
            content: "";
            position: absolute;
            left: 1rem;
            top: 0.8rem;
            width: 0;
            height: 0;
            border-left: 2.4rem solid #fff;
            border-top: 1.2rem solid transparent;
            border-bottom: 1.2rem solid transparent;
            transition: border 0.3s ease-in-out 0s;
        }
        .login-btn:hover, .login-btn:focus, .login-btn:active {
            background: #fff;
            border-color: orange;
            outline: none;
        }
        .login-btn:hover:after, .login-btn:focus:after, .login-btn:active:after {
            border-left-color: orange;
        }

    </style>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

</head>

<body>
<c:if test="${not empty msg}">
    <div class="msg">${msg}</div>
</c:if>
<div class="login">
    <header class="login-header"><span class="text">LOGIN</span><span class="loader"></span></header>
    <form name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">
        <c:if test="${not empty error}">
            <div class="error" style="color: #ff0000;">${error}</div>
        </c:if>
        <input type="text" id="username" name="username" placeholder="Username" class="login-input"/>
        <input type="password" id="password" name="password" placeholder="Password" class="login-input"/>
        <button type="submit" value="Submit" class="login-btn">login</button>
        <a href="<c:url value="/" />" class="btn btn-default">Cancel</a>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    </form>
</div>




</body>
</html>