$(document).ready(function () {
    $("#login").on('click', function () {
        var username = $("#username").val();
        var password = $("#username").val();
        $.ajax({
            type: "GET",
            url: "/api/admin_login/" + username + "/" + password
        }).done(function (data) {
            console.log(data);
            if (data.length == 0) {
                alert('Invalid username please enter valid username and password')
            } else {
                window.location = "/home";
            }
        });
    })
});