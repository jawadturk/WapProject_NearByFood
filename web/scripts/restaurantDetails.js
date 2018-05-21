$(function () {
    debugger;
    if($('input[name="resPara"]').val() != ""){
        showDetails();
    }

    //validation on the form
    $('#formNewReview').submit(function (evt) {
        if($("[name='txtNewReview']").val().trim() === ""){
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
                        $('input[name="txtRestaurantId"]').val(response["id"]);

                        $('#restaurantName').html(response["name"]);
                        $('#phoneNo').html(response["phoneNo"]);
                        $('#address').html(response["address"]);

                        if (response["reviews"] != null) {

                            $('#reviewsSection').show();
                            $('#reviews').html("");

                            let userReviewsArr = response["reviews"];
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
                                            .append($("<div>", {
                                                    "css": {
                                                        "border": "1px solid black",
                                                        "overflow": "auto",
                                                        "margin-top": "10px"
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
                                                        $("<span>", {
                                                            "text": userReviewsArr[index].dateTime,
                                                            "css": {
                                                                "float": "right"
                                                            }
                                                        })
                                                    )
                                            );
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
});