$(document).ready(function () {
    $("#login").on('click', function () {
        var username = $("#username").val();
        var password = $("#password").val();
        $.ajax({
            type: "GET",
            url: "http://localhost:8080/api/login/" + username + "/" + password
        }).done(function (data) {
           
            if (data== 'invalid') {
                alert('Invalid username please enter valid username and password')
            } else if(data=='admin'){
                window.location.href = "admin-home.html";
            }else{
                window.location.href = "customer-home.html?"+data
            }
        });
    })
});