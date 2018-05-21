<%--
  Created by IntelliJ IDEA.
  User: 986298
  Date: 5/19/2018
  Time: 9:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Restaurant Detail</title>
</head>
<body>

<form id="exampelForm">
    <input type="text" id="resPara" name="resPara" placeholder="restaurant Id" value="${restaurantId}">
    <input type="button" id="btnSubmit" value="Submit">
</form>

<div>
    <p id="restaurantName">

    </p>
    <p id="phoneNo">

    </p>
    <p id="address">

    </p>

    <div id="reviewsSection">
        <p>
            Reviews:
        </p>
        <div id="reviews">

        </div>

        <form id="formNewReview" action="addReview" method="post">
            <textarea name="txtNewReview" cols="50" rows="10">

            </textarea>
            <input type="text" name="txtRestaurantId" >
            <input type="submit" value="Add Review">
        </form>
    </div>
</div>


<div id="resId">

</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="./scripts/restaurantDetails.js"></script>
</body>
</html>
