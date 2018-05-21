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
<div class="banner about-w3bnr">
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
                <ul>
                    <li class="dropdown head-dpdn">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Cuisine Type<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <c:forEach items="${cuisineType}" var="cuisine" varStatus="status">
                                <li id="${cuisine.id}"><a>${cuisine.name}</a></li>
                            </c:forEach>

                        </ul>
                    </li>
                    <li class="dropdown head-dpdn">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">City<span class="caret"></span></a>
                        <ul class="dropdown-menu">

                            <c:forEach items="${citiesList}" var="city" varStatus="status">
                                <li id="${city.id}"><a>${city.name}</a></li>
                            </c:forEach>

                        </ul>
                    </li>
                </ul>
                <div class="clearfix"> </div>
            </div>
            <div class="products-row">

                <c:forEach items="${restaurants}" var="restaurant" varStatus="status">
                    <%--<li id="${city.id}"><a>${city.name}</a></li>--%>

                    <div class="col-xs-6 col-sm-4 product-grids">
                        <div class="flip-container">
                            <div class="flipper agile-products">
                                <div class="front">

                                    <img src="<c:url value="/resources/images/${restaurant.thumbnailImage}"/>" class="img-responsive" alt="img">

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

                                        <a href="#" data-toggle="modal" data-target="#myModal1">More</a>

                                </div>
                            </div>
                        </div>
                    </div>

                </c:forEach>


                <div class="col-xs-6 col-sm-4 product-grids">
                    <div class="flip-container">
                        <div class="flipper agile-products">
                            <div class="front">


                                <img src="<c:url value="/resources/images/g6.jpg"/>" class="img-responsive" alt="img">

                                <div class="agile-product-text">
                                    <h5>Fish salad</h5>
                                </div>
                            </div>
                            <div class="back">
                                <h4>Fish salad</h4>
                                <p>Maecenas condimentum interdum lacus, ac varius nisl.</p>
                                <h6>3<sup>$</sup></h6>
                                <form action="#" method="post">
                                    <input type="hidden" name="cmd" value="_cart">
                                    <input type="hidden" name="add" value="1">
                                    <input type="hidden" name="w3ls_item" value="Fish salad">
                                    <input type="hidden" name="amount" value="3.00">
                                    <button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                    <span class="w3-agile-line"> </span>
                                    <a href="#" data-toggle="modal" data-target="#myModal1">More</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-4 product-grids">
                    <div class="flip-container">
                        <div class="flipper agile-products">
                            <div class="front">
                                <div class="agile-product-text agile-product-text2">
                                    <h5>Sandwich</h5>
                                </div>
                                <img  src="<c:url value="/resources/images/g1.jpg"/>"  class="img-responsive" alt="img">
                            </div>
                            <div class="back">
                                <h4>Sandwich</h4>
                                <p>Maecenas condimentum interdum lacus, ac varius nisl.</p>
                                <h6>2<sup>$</sup></h6>
                                <form action="#" method="post">
                                    <input type="hidden" name="cmd" value="_cart">
                                    <input type="hidden" name="add" value="1">
                                    <input type="hidden" name="w3ls_item" value="Sandwich">
                                    <input type="hidden" name="amount" value="2.00">
                                    <button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                    <span class="w3-agile-line"> </span>
                                    <a href="#" data-toggle="modal" data-target="#myModal1">More</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-4 product-grids">
                    <div class="flip-container">
                        <div class="flipper agile-products">
                            <div class="front">
                                <img  src="<c:url value="/resources/images/g3.jpg"/>"  class="img-responsive" alt="img">
                                <div class="agile-product-text">
                                    <h5>Indian Food</h5>
                                </div>
                            </div>
                            <div class="back">
                                <h4>Indian Food</h4>
                                <p>Maecenas condimentum interdum lacus, ac varius nisl.</p>
                                <h6>2<sup>$</sup></h6>
                                <form action="#" method="post">
                                    <input type="hidden" name="cmd" value="_cart">
                                    <input type="hidden" name="add" value="1">
                                    <input type="hidden" name="w3ls_item" value="Indian Food">
                                    <input type="hidden" name="amount" value="2.00">
                                    <button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                    <span class="w3-agile-line"> </span>
                                    <a href="#" data-toggle="modal" data-target="#myModal1">More</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-xs-6 col-sm-4 product-grids">
                    <div class="flip-container">
                        <div class="flipper agile-products">
                            <div class="front">
                                <img src="<c:url value="/resources/images/img1.jpg"/>" class="img-responsive" alt="img">
                                <div class="agile-product-text">
                                    <h5>Bread Toast</h5>
                                </div>
                            </div>
                            <div class="back">
                                <h4>Bread Toast</h4>
                                <p>Maecenas condimentum interdum lacus, ac varius nisl.</p>
                                <h6>2<sup>$</sup></h6>
                                <form action="#" method="post">
                                    <input type="hidden" name="cmd" value="_cart">
                                    <input type="hidden" name="add" value="1">
                                    <input type="hidden" name="w3ls_item" value="Bread Toast">
                                    <input type="hidden" name="amount" value="2.00">
                                    <button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                    <span class="w3-agile-line"> </span>
                                    <a href="#" data-toggle="modal" data-target="#myModal1">More</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-4 product-grids">
                    <div class="flip-container">
                        <div class="flipper agile-products">
                            <div class="front">
                                <div class="agile-product-text agile-product-text2">
                                    <h5>Chinese Dish</h5>
                                </div>
                                <img src="<c:url value="/resources/images/g2.jpg"/>" class="img-responsive" alt="img">
                            </div>
                            <div class="back">
                                <h4>Chinese Dish</h4>
                                <p>Maecenas condimentum interdum lacus, ac varius nisl.</p>
                                <h6>3<sup>$</sup></h6>
                                <form action="#" method="post">
                                    <input type="hidden" name="cmd" value="_cart">
                                    <input type="hidden" name="add" value="1">
                                    <input type="hidden" name="w3ls_item" value="Chinese Dish">
                                    <input type="hidden" name="amount" value="3.00">
                                    <button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                    <span class="w3-agile-line"> </span>
                                    <a href="#" data-toggle="modal" data-target="#myModal1">More</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-4 product-grids">
                    <div class="flip-container">
                        <div class="flipper agile-products">
                            <div class="front">
                                <img src="<c:url value="/resources/images/g9.jpg"/>" class="img-responsive" alt="img">
                                <div class="agile-product-text">
                                    <h5>Duck roast</h5>
                                </div>
                            </div>
                            <div class="back">
                                <h4>Duck roast</h4>
                                <p>Maecenas condimentum interdum lacus, ac varius nisl.</p>
                                <h6>7<sup>$</sup></h6>
                                <form action="#" method="post">
                                    <input type="hidden" name="cmd" value="_cart">
                                    <input type="hidden" name="add" value="1">
                                    <input type="hidden" name="w3ls_item" value="Duck roast">
                                    <input type="hidden" name="amount" value="7.00">
                                    <button type="submit" class="w3ls-cart pw3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                                    <span class="w3-agile-line"> </span>
                                    <a href="#" data-toggle="modal" data-target="#myModal1">More</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="clearfix"> </div>
            </div>
        </div>

        <div class="clearfix"> </div>
    </div>
</div>
</div>


<!-- modal -->
<div class="modal video-modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModal1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
            </div>
            <section>
                <div class="modal-body">
                    <div class="col-md-5 modal_body_left">
                        <img src="images/s1.jpg" alt=" " class="img-responsive">
                    </div>
                    <div class="col-md-7 modal_body_right single-top-right">
                        <h3 class="item_name">France Special Dish</h3>
                        <p>Proin placerat urna et consequat efficitur, sem odio blandit enim</p>
                        <div class="single-rating">
                            <ul>
                                <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                <li class="w3act"><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                <li class="rating">20 reviews</li>
                                <li><a href="#">Add your review</a></li>
                            </ul>
                        </div>
                        <div class="single-price">
                            <ul>
                                <li>$18</li>
                                <li><del>$20</del></li>
                                <li><span class="w3off">10% OFF</span></li>
                                <li>Ends on : Dec,5th</li>
                                <li><a href="#"><i class="fa fa-gift" aria-hidden="true"></i> Coupon</a></li>
                            </ul>
                        </div>
                        <p class="single-price-text">Fusce a egestas nibh, eget ornare erat. Proin placerat, urna et consequat efficitur, sem odio blandit enim, sit amet euismod turpis est mattis lectus. Vestibulum maximus quam et quam egestas imperdiet. In dignissim auctor viverra. </p>
                        <form action="#" method="post">
                            <input type="hidden" name="cmd" value="_cart" />
                            <input type="hidden" name="add" value="1" />
                            <input type="hidden" name="w3ls_item" value="France Special" />
                            <input type="hidden" name="amount" value="18.00" />
                            <button type="submit" class="w3ls-cart" ><i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart</button>
                        </form>
                        <a href="#" class="w3ls-cart w3ls-cart-like"><i class="fa fa-heart-o" aria-hidden="true"></i> Add to Wishlist</a>
                        <div class="single-page-icons social-icons">
                            <ul>
                                <li><h4>Share on</h4></li>
                                <li><a href="#" class="fa fa-facebook icon facebook"> </a></li>
                                <li><a href="#" class="fa fa-twitter icon twitter"> </a></li>
                                <li><a href="#" class="fa fa-google-plus icon googleplus"> </a></li>
                                <li><a href="#" class="fa fa-dribbble icon dribbble"> </a></li>
                                <li><a href="#" class="fa fa-rss icon rss"> </a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </section>
        </div>
    </div>
</div>
<!-- //modal -->


<!-- the jScrollPane script -->
<script src="<c:url value="/resources/js/jquery.jscrollpane.min.js" />"></script>

<script type="text/javascript" id="sourcecode">
    $(function()
    {
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
    jQuery(document).ready(function($) {
        $(".scroll").click(function(event){
            event.preventDefault();

            $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
        });
    });
</script>
<!-- //end-smooth-scrolling -->
<!-- smooth-scrolling-of-move-up -->
<script type="text/javascript">
    $(document).ready(function() {
        /*
        var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
        };
        */

        $().UItoTop({ easingType: 'easeOutQuart' });

    });
</script>
<!-- //smooth-scrolling-of-move-up -->
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="<c:url value="/resources/js/bootstrap.js" />"></script>
</body>
</html>
