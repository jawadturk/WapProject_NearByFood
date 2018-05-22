$(function () {
    $('.addRestaurant').click(function () {
        $.post("getCities", {}).done(function (res) {
            res = JSON.parse(res);
            console.log(res);
            for(let index = 0; index < res.length; index++){
                $('#citiesDDL').append(
                    $("<option>", {
                        "value": res[index].id,
                        "text" : res[index].name
                    })
                );
            }

        }).fail(function (res) {
            alert(res);
        });
        $('#myModal1').modal('show');
    });

    $('#btnAddRestaurant').click(function () {
        var resName = $('#resName').val();
        var resAddress = $('#resAddress').val();
        var resPhone = $('#resPhone').val();
        var cityId = $('#citiesDDL').val();
        console.log('resName: ' + resName);
        if(resName != "" && resAddress != "" && resPhone != "") {
            $.post('addRestaurant', {
                "cityId": cityId,
                "resName": resName,
                "resAddress": resAddress,
                "resPhone": resPhone
            }).done(function(res) {
                alert("New element added!");
                location.reload();
            }).fail(function(res) {

            });
        } else {
            alert('Wrong data!');
        }
    });

    $('.addCuisine').click(function () {
        $('#myModal2').modal('show');
    });

    $('#btnAddCuisine').click(function () {
        var cuisineName = $('#cuisineName').val();
        console.log('resName: ' + resName);
        if(cuisineName != "") {
            $.post('addCuisine', {
                "cuisineName": cuisineName
            }).done(function(res) {
                alert("New element added!");
                location.reload();
            }).fail(function(res) {

            });
        } else {
            alert('Wrong data!');
        }
    });

});