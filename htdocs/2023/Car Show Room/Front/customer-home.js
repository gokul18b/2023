
$(document).ready(function () {
	$("#booking").on('click', function () {
		var one = cid;
        var two = cusid;
		
        $.ajax({
            type: "GET",
            url: "http://localhost:8080/api/book_car/" + encodeURIComponent(one) + "/" + two
        }).done(function (data) {
           
			alert(date)
        });
	});
});


 function car_details(){
	$.ajax({
		type: "GET",
		url: "http://localhost:8080/api/car_details"
	}).done(function (data) {
		for(var i=0;i<data.length;i++){
			var row=data[i];
			html += `<div class="card" style="width: 18rem;">
						<img class="card-img-top" src="./car.jpg" alt="Card image cap">
						<div class="card-body" >
							<h5 class="card-title">xxxxxxxx</h5>
							<p class="card-text">xxxxxxxxxxxxxxxxxxxxxxxxx</p>
						</div>
						<ul class="list-group list-group-flush">
							<li class="list-group-item">xxxxxxxxxxxxxxxxx</li>
							<li class="list-group-item">xxxxxxxx</li>
							<li class="list-group-item">xxxxxxxx</li>
						</ul>
						<div class="card-body">
							<a href="#" class="card-link">xxxxxxx</a>
							<a href="#" class="card-link">xxxxx</a>
						</div>
					</div>`;
			
		}
		 $("#body2").html(html);
	});
 }

function loading(){
	
	car_details();
}
