$(function () {
    $('#resPara').val("");
    /*$('#exampelForm').css({
        "display" : "none"
    });*/

    $('#loginOptionMainPage').click(function () {
        $.post('addReview', {}).done(function (res) {
            res = JSON.parse(res);
            if (res === "loginform.jsp") {
                $(location).attr('href', 'http://localhost:8080/loginform.jsp');
            }
        });
    });

    $('[name="moreOption"]').click(function () {
        var id = $(this).attr('id');
        $('#myModal1').modal('show');
        $('#resPara').val(id);
        showDetails();
    });

    if ($('input[name="resPara"]').val() != "") {
        $('#myModal1').modal('show');
        showDetails();
    }

    //validation on the form
    $('#formNewReview').submit(function (evt) {
        if ($("[name='txtNewReview']").val().trim() === "") {
            evt.preventDefault();
        }
    });

    $('#reviewsSection').hide();

    $('#btnSubmit').click(showDetails);

    function showDetails() {

        $.post('reviewServlet',
            {
                "resPara": $('#resPara').val()
            })
            .done(function (response) {
                response = JSON.parse(response);
                if (response != null) {
                    if (response["name"] != null) {
                        debugger;
                        //console.log(response);
                        $('input[name="txtRestaurantId"]').val(response["id"]);

                        $('#restaurantName').html(response["name"]);
                        $('#phoneNo').html(response["phoneNo"]);
                        $('#address').html(response["address"]);
                        $("[name='imgRes']").attr("src", "/resources/images/" + response["thumbnailImage"]);
                        if (response["reviews"] != null) {



                            $('#reviewsSection').show();
                            $('#reviews').html("");

                            let userReviewsArr = response["reviews"];

                            $(".reviewsCount").html(userReviewsArr.length + " Reviews");

                            for (let index = 0; index < userReviewsArr.length; index++) {
                                let exampleUserId = userReviewsArr[index].userId;
                                $.post('userDetailsServlet', {
                                    "userId": userReviewsArr[index].userId
                                }).done(function (res) {
                                    res = JSON.parse(res);
                                    if (res === "NoUserFound") {
                                        //continue
                                    }
                                    else {
                                        $('#reviews')
                                            .prepend($("<div>", {
                                                    "css": {
                                                        "border": "1px solid black",
                                                        "overflow": "auto",
                                                        "margin-top": "10px",
                                                        "padding" : "10px",
                                                        "width": "100%",
                                                        "overflow-y": "auto",
                                                        "overflow-x": "hidden"
                                                    }
                                                })
                                                    .append(
                                                        $("<span>", {
                                                            "text": res.name
                                                        })
                                                    )
                                                    .append(
                                                        $("<hr/>")
                                                    )
                                                    .append(
                                                        $("<span>", {
                                                            "text": userReviewsArr[index].reviewText
                                                        })
                                                    )
                                                    .append(
                                                        $("<br/>")
                                                     )
                                                    .append(
                                                        $("<span>", {
                                                            "text": userReviewsArr[index].dateTime,
                                                            "css": {
                                                                "float": "right"
                                                            }
                                                        })
                                                    )
                                            );
                                        $('#myModal1').modal('show');
                                    }
                                }).fail(function (res) {

                                });
                            }
                        }
                    }
                }
            })
            .fail(function (response) {
                alert(response);
            });
    }

    $('#addReview').click(function () {
        if($('[name="txtNewReview"]').val().trim() === ""){
            toastr.error('Add valid text for review', ":(");
        }
        else {
            $.post('addReview', {
                "txtNewReview": $('[name="txtNewReview"]').val().trim(),
                "txtRestaurantId": $('[name="txtRestaurantId"]').val().trim()
            }).done(function (res) {
                res = JSON.parse(res);
                console.log(res);
                if (res === "loginform.jsp") {
                    $(location).attr('href', 'http://localhost:8080/loginform.jsp')
                }
                else {
                    $('[name="txtNewReview"]').val("");
                    toastr.success('Good job, Review Added!', ":)");
                    showDetails();
                }
            }).fail(function (res) {
                alert(res);
            });

        }

    });
});