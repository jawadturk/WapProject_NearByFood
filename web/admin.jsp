<%--
  Created by IntelliJ IDEA.
  User: bahal
  Date: 21.05.2018
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Staple Food a Restaurants Category Bootstrap Responsive website Template | Home :: w3layouts</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
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
    <!-- banner-text -->
    <div class="banner-text">
        <div class="container">
            <h2>Delicious food from the <br> <span>Best Chefs For you.</span></h2>
        </div>
    </div>
</div>

        <div class="addResDiv">
            <h1 style="color:#e8ff00;margin-top: 20px;margin-left: -220px">Restaraunt:</h1>
        </div>

        <button id="addRestaurant" class="addRestaurant">ADD
        </button>


<table style="margin-top: 150px" class="container">
    <c:forEach items="${restaurantsAdmin}" var="restaurant" varStatus="status">
        <%--<li id="${city.id}"><a>${city.name}</a></li>--%>
        <tr>
            <%--<td class="addRestaurantTxt">${restaurant.id}</td>--%>
            <td class="addRestaurantTxt">${restaurant.name}</td>
            <td class="addRestaurantTxt">${restaurant.cityName}</td>
            <td class="addRestaurantTxt">${restaurant.phoneNo}</td>
            <td class="addRestaurantTxt">${restaurant.address}</td>
        </tr>
    </c:forEach>
</table>

    <div class="addCuisineDiv">
        <h1 style="color:#e8ff00;margin-top: 0px;margin-left: -700px">Cuisine:</h1>
    </div>

    <button id="addCuisine" class="addCuisine">ADD
    </button>


<table style="margin-top: 150px" class="container">
    <c:forEach items="${cuisineAdmin}" var="cuisine" varStatus="status">
        <%--<li id="${city.id}"><a>${city.name}</a></li>--%>
        <tr>
            <td class="addCuisineTxt">${cuisine.id}</td>
            <td class="addCuisineTxt">${cuisine.name}</td>
        </tr>
    </c:forEach>
</table>
<!-- //banner -->
<br><br><br>


<!-- modal1 -->
<div class="modal video-modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModal1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">×</span></button>
            </div>
            <section>
                <div class="modal-body">

                    <form>
                        <div class="formRes">
                            City: <select id="citiesDDL" class="inpCity"></select> <br>
                            Name: <input type="text" name="resName" id="resName" class="inpName"> <br>
                            Address: <input type="text" name="resAddress" id="resAddress" class="inpAddress"> <br>
                            Phone: <input type="text" name="resPhone" id="resPhone" class="inpPhone"> <br>
                            <input type="submit" id="btnAddRestaurant" value="SUBMIT" class="submit"> <br>
                        </div>
                    </form>

                </div>
            </section>
        </div>
    </div>
</div>
<!-- //modal1 -->

<!-- modal2 -->
<div class="modal video-modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModal2">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">×</span></button>
            </div>
            <section>
                <div class="modal-body">

                    <form>
                        <div class="formCuisine">
                            Name: <input type="text" name="cuisineName" id="cuisineName" class="inpCuisineName"> <br>
                            <input type="submit" id="btnAddCuisine" value="SUBMIT" class="submit"> <br>
                        </div>
                    </form>

                </div>
            </section>
        </div>
    </div>
</div>
<!-- //modal2 -->


<script src="<c:url value="/resources/js/bootstrap.js" />"></script>
<script src="<c:url value="/scripts/admin.js" />"></script>

</body>
</html>

