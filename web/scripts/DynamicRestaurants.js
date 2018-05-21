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
    $.get('restaurants', {
        cuisineType : cuisineId,
        cities:cityId
    }, function(responseText) {
        console.log(responseText)

    });
}