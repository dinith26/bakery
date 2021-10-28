function getDetails(){
    $.ajax({
        url: '/home/details',
        type: 'GET',
        data: {
        },
        success: (data, status, xhr) => {
            let aa = data.data[0]
            console.log(aa.package)
            console.log(aa.name)
        },
        error: (xhr, status, error) => {
        },
	});
}

getDetails();


$( document ).ready(function() {
    console.log( "ready!" );
    $("#submit").on('click', function(){
        $.ajax({
            url: '/home/cal',
            type: 'GET',
            data: {
                vegemite: $("#veg").val(),
                blueberry: $("#blue").val(),
                croissant: $("#cro").val(),
            },
            success: (data, status, xhr) => {
                $(".veg").html(data.data[0]);
                $(".blu").html(data.data[1]);
                $(".cro").html(data.data[2]);
            },
            error: (xhr, status, error) => {
            },
        });
    });
});