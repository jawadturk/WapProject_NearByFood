<%--
  Created by IntelliJ IDEA.
  User: jawad
  Date: 5/21/2018
  Time: 10:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Staple Food a Restaurants Category Bootstrap Responsive website Template | Login :: w3layouts</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="n" />
    <!-- Custom Theme files -->

    <link rel="stylesheet" type="text/css" media="all" href="<c:url value="/resources/css/bootstrap.css" />"/>
    <link rel="stylesheet" type="text/css" media="all" href="<c:url value="/resources/css/style.css" />"/>
    <link rel="stylesheet" type="text/css" media="all" href="<c:url value='/resources/css/font-awesome.css' />"/>

    <!-- //Custom Theme files -->
    <!-- js -->
    <script src="<c:url value="/resources/js/jquery-2.2.3.min.js" />"></script>

    <!-- //js -->
    <!-- web-fonts -->
    <link href="//fonts.googleapis.com/css?family=Berkshire+Swash" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Yantramanav:100,300,400,500,700,900" rel="stylesheet">
    <!-- //web-fonts -->
</head>
<!-- login-page -->
<div class="login-page about">
    <img class="login-w3img" src="<c:url value="/resources/images/img3.jpg"/>"  alt="">
    <div class="container">
        <h3 class="w3ls-title w3ls-title1">Login to your account</h3>
        <div class="login-agileinfo">
            <form action="login" method="post">
                <input class="agile-ltext" type="text" name="txtUserName" placeholder="Username" required="" value="${userNameAutoFill}">
                <input class="agile-ltext" type="password" name="txtPassword" placeholder="Password" required="">
                <div class="wthreelogin-text">
                    <ul>
                        <li>
                            <label class="checkbox">
                                <input type="checkbox" name="txtRememberMe" <c:if test="${userNameAutoFill != null}">checked</c:if>><i></i>
                                <span> Remember me ?</span>
                            </label>
                        </li>
                    </ul>
                    <div class="clearfix"> </div>
                </div>
                <input type="submit" value="LOGIN">
            </form>

        </div>
    </div>
</div>
<!-- //login-page -->


</body>
</html>