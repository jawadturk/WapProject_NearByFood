<%--
  Created by IntelliJ IDEA.
  User: jawad
  Date: 5/18/2018
  Time: 11:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Staple Food a Restaurants Category Bootstrap Responsive website Template | Home :: w3layouts</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="keywords" content="" />
  <!-- Custom Theme files -->

  <link rel="stylesheet" type="text/css" media="all" href="<c:url value="/resources/css/bootstrap.css" />"/>
  <link rel="stylesheet" type="text/css" media="all" href="<c:url value="/resources/css/style.css" />"/>
  <link rel="stylesheet" type="text/css" media="all" href="<c:url value='/resources/css/font-awesome.css' />"/>
  <link rel="stylesheet" type="text/css" media="all" href="<c:url value='/resources/css/owl.carousel.css' />"/>

  <!-- //Custom Theme files -->
  <!-- js -->
  <script src="<c:url value="/resources/js/jquery-2.2.3.min.js" />"></script>

  <!-- //js -->
  <!-- web-fonts -->
  <link href="//fonts.googleapis.com/css?family=Berkshire+Swash" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Yantramanav:100,300,400,500,700,900" rel="stylesheet">
  <!-- //web-fonts -->
</head>
<body>
<!-- banner -->
<div class="banner">
  <!-- header -->
  <div class="header">
    <div class="w3ls-header"><!-- header-one -->
      <div class="container">

        <div class="w3ls-header-right">
          <ul>

            <li class="head-dpdn">
              <a href="login.html"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</a>
            </li>
            <li class="head-dpdn">
              <a href="signup.html"><i class="fa fa-user-plus" aria-hidden="true"></i> Signup</a>
            </li>

          </ul>
        </div>
        <div class="clearfix"> </div>
      </div>
    </div>
    <!-- //header-one -->

  </div>
  <!-- //header-end -->
  <!-- banner-text -->
  <div class="banner-text">
    <div class="container">
      <h2>Delicious food from the <br> <span>Best Chefs For you.</span></h2>
      <div class="agileits_search">
        <form action="/restaurants" method="post">
          <select id="cuisineType" name="cuisineType" required="">
            <option value="">Cuisine Type</option>
            <c:forEach items="${cuisineType}" var="cuisine" varStatus="status">
              <option value="${cuisine.id}">${cuisine.name}</option>
            </c:forEach>
          </select>
          <select id="cities" name="cities" required="">
            <option value="">Popular Cities</option>
            <c:forEach items="${citiesList}" var="city" varStatus="status">
              <option value="${city.id}">${city.name}</option>
            </c:forEach>

          </select>
          <input type="submit" value="Search">
        </form>
      </div>
    </div>
  </div>
</div>
<!-- //banner -->


</body>
</html>
