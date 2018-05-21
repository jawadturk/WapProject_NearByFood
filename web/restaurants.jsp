<%--
  Created by IntelliJ IDEA.
  User: jawad
  Date: 5/20/2018
  Time: 5:52 PM
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" />
        <!-- //Custom Theme files -->
        <!-- js -->
        <script src="<c:url value="/resources/js/jquery-2.2.3.min.js" />"></script>
        <script src="<c:url value="/scripts/DynamicRestaurants.js" />"></script>
        <script src="<c:url value="/scripts/restaurantDetails.js" />" defer></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" defer></script>
        <!-- //js -->
        <!-- web-fonts -->
        <link href="//fonts.googleapis.com/css?family=Berkshire+Swash" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Yantramanav:100,300,400,500,700,900" rel="stylesheet">
        <!-- //web-fonts -->
    </head>
    <body>
        <!-- banner -->
        <div class="banner about-w3bnr">
            <!-- header -->
            <div class="header">
                <div class="w3ls-header"><!-- header-one -->
                    <div class="container">

                        <div class="w3ls-header-right">
                            <ul>
                                <c:if test="${userName == null}">
                                    <li class="head-dpdn">
                                        <a id="loginOptionMainPage"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</a>
                                    </li>
                                </c:if>

                                <c:if test="${userName != null}">
                                    <li class="head-dpdn">
                                        <a href="/logout"><i class="fa fa-sign-in" aria-hidden="true"></i> Logout</a>
                                    </li>
                                </c:if>

                            </ul>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <!-- //header-one -->
                <!-- navigation -->
                <div class="navigation agiletop-nav">
                    <div class="container">
                        <nav class="navbar navbar-default">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="navbar-header w3l_logo">

                                <h1><a href="index.html">Staple<span>Best Food Collection</span></a></h1>
                            </div>


                        </nav>
                    </div>
                </div>
                <!-- //navigation -->
            </div>
            <!-- //header-end -->
            <!-- banner-text -->
            <div class="banner-text">
                <div class="container">
                    <h2>Delicious food from the <br> <span>Best Chefs For you.</span></h2>
                </div>
            </div>
        </div>
        <!-- //banner -->

        <!-- products -->
        <div class="products">
            <div class="container">
                <div class="col-md-9 product-positiong">
                    <div class="product-top">
                        <h4>Restaurants</h4>



                                <select id="cuisineTypeSelect"  name="cuisineType" required="">
                                    <option value="">Cuisine Type</option>
                                    <c:forEach items="${cuisineType}" var="cuisine" varStatus="status">
                                        <option value="${cuisine.id}">${cuisine.name}</option>
                                    </c:forEach>
                                </select>


                                <select id="citySelect"  name="cities" required="">
                                    <option value="">Popular Cities</option>
                                    <c:forEach items="${citiesList}" var="city" varStatus="status">
                                        <option value="${city.id}">${city.name}</option>
                                    </c:forEach>

                                </select>


                        <div class="clearfix"></div>
                    </div>
                    <div class="loader" id="loader" style="display: none;"></div>
                    <div id="myElementsContainer" class="products-row">

                        <c:forEach items="${restaurants}" var="restaurant" varStatus="status">

                        <div class="col-xs-6 col-sm-4 product-grids">
                            <div class="flip-container">
                                <div class="flipper agile-products">
                                    <div class="front">

                                        <img src="<c:url value="/resources/images/${restaurant.thumbnailImage}"/>"
                                             class="img-responsive" alt="img">

                                        <c:choose>
                                        <c:when test="${status.index  % 2==0}">
                                        <div class="agile-product-text">
                                            </c:when>
                                            <c:otherwise>
                                            <div class="agile-product-text agile-product-text2">
                                                </c:otherwise>
                                                </c:choose>
                                                <h5>${restaurant.name}</h5>
                                            </div>
                                        </div>
                                        <div class="back">
                                            <h4>${restaurant.name}</h4>
                                            <p>${restaurant.address}</p>
                                            <p>${restaurant.phoneNo}</p>

                                            <a href="#" id="${restaurant.id}" name="moreOption">More</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                            <div class="clearfix"></div>
                        </div>
                    </div>

                    <div class="clearfix"></div>
                </div>
            </div>
        </div>

        <form id="exampelForm">
            <input type="text" id="resPara" name="resPara" placeholder="restaurant Id" value="${restaurantId}">
            <input type="button" id="btnSubmit" value="Submit">
        </form>


        <!-- modal -->
        <div class="modal video-modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModal1">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">×</span></button>
                    </div>
                    <section>
                        <div class="modal-body">
                            <div class="col-md-5 modal_body_left">
                                <img name="imgRes" src="" alt="Restaurant Image" class="img-responsive">
                            </div>
                            <div class="col-md-7 modal_body_right single-top-right">
                                <h3 id="restaurantName"></h3>

                                <p id="address"></p>
                                <span>Contact: </span><span id="phoneNo"></span>
                                <div class="single-rating">
                                    <ul>
                                        <li class="reviewsCount"></li>
                                    </ul>
                                </div>

                                <div id="reviewsSection">
                                    <form id="formNewReview">
                                        <textarea name="txtNewReview" cols="78" rows="5"></textarea>
                                        <input type="hidden" name="txtRestaurantId">
                                        <input type="button" id="addReview" class="btn btn-info" value="Add Review">
                                    </form>

                                    <p>Reviews:</p>
                                    <div id="reviews"></div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <!-- //modal -->


        <!-- the jScrollPane script -->
        <script src="<c:url value="/resources/js/jquery.jscrollpane.min.js" />"></script>

        <script type="text/javascript" id="sourcecode">
            $(function () {
                $('.scroll-pane').jScrollPane();
            });
        </script>
        <!-- //the jScrollPane script -->
        <script src="<c:url value="/resources/js/jquery.mousewheel.js" />"></script>
        <!-- the mouse wheel plugin -->
        <!-- start-smooth-scrolling -->

        <script src="<c:url value="/resources/js/SmoothScroll.min.js" />"></script>
        <script src="<c:url value="/resources/js/move-top.js" />"></script>
        <script src="<c:url value="/resources/js/easing.js" />"></script>


        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();

                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!-- //end-smooth-scrolling -->
        <!-- smooth-scrolling-of-move-up -->
        <script type="text/javascript">
            $(document).ready(function () {
                /*
                var defaults = {
                    containerID: 'toTop', // fading element id
                    containerHoverID: 'toTopHover', // fading element hover id
                    scrollSpeed: 1200,
                    easingType: 'linear'
                };
                */

                $().UItoTop({easingType: 'easeOutQuart'});

            });
        </script>
        <!-- //smooth-scrolling-of-move-up -->
        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="<c:url value="/resources/js/bootstrap.js" />"></script>
    </body>
</html>
