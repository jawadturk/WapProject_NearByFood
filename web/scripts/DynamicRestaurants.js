$(function () {

    var container = $("#myElementsContainer");
    var cuisineSelector = $("#cuisineTypeSelect");
    var citySelector = $("#citySelect");

    cuisineSelector.on('change', function() {
        var cuisineId= this.value ;
        var cityId = citySelector.find(":selected").val();
        retrieveRestaurants(cuisineId,cityId);
    })

    citySelector.on('change', function() {
        var cityId= this.value ;
        var cuisineId = cuisineSelector.find(":selected").val();

        retrieveRestaurants(cuisineId,cityId);
    })


});

function retrieveRestaurants(cuisineId,cityId) {
    $('#loader').show();
    $.get('dynamicRestaurants', {
        cuisineType : cuisineId,
        cities:cityId
    }, function(responseText) {
        console.log(responseText)
        responseText = JSON.parse(responseText);
        $("#myElementsContainer").empty();
        $.each(responseText, function(i, item) {

            var divColor = ($("<div>"));
            divColor.addClass("agile-product-text");
            divColor.addClass("agile-product-text2");
            if (i%2===0) {
                divColor.removeClass("agile-product-text2");
            }

            console.log(i);
            $("#myElementsContainer")
                .append($("<div>")
                    .addClass("col-xs-6")
                    .addClass("col-sm-4")
                    .addClass("product-grids")
                    .append($("<div>")
                        .addClass("flip-container")

                        .append($("<div>")
                            .addClass("flipper")
                            .addClass("agile-products")
                            .append($("<div>")
                                .addClass("front")
                                .append($("<img>")
                                    .addClass("img-responsive")
                                    .attr("src","/resources/images/"+item.thumbnailImage)
                                    .attr("alt","")
                                )

                                .append(divColor
                                .append($("<h5>").text(item.name))
                                )


                            )
                            .append($("<div>")
                                .addClass("back")

                                .append($("<h4>").text(item.name))
                                .append($("<p>").text(item.address))
                                .append($("<p>").text(item.phoneNo))
                                .append($("<a>")
                                    .addClass("")
                                    .text("More")
                                    .attr("href", "#")
                                    .attr('id', item.id)
                                    .attr('name', 'moreOption')

                                )
                            )
                        )
                    )

                )
        });
        $("#myElementsContainer")
            .append($("<div>").addClass("clearfix"));









    }).always(function(){
        $('#loader').hide();
    });
}