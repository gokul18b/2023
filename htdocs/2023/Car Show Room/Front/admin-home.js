
$(document).ready(function () {
	loading();
	$("#register1").on('click', function () {
		
		//var one = $("#1").val();
        var two = $("#2").val();
		var three = $("#3").val();
		var four = $("#4").val();
		var five = $("#5").val();
		var six = $("#6").val();
		var seven = $("#7").val();
		var eight = $("#8").val();
        $.ajax({
            type: "GET",
            url: "http://localhost:8080/api/add_car/" +  two+ "/" + three+ "/" + four+ "/" + five+ "/" + six+ "/" + seven+ "/" + eight
        }).done(function (data) {
           // $("#1").val("");
			$("#2").val("");
			$("#3").val("");
			$("#4").val("");
			$("#5").val("");
			$("#6").val("");
			$("#7").val("");
			$("#8").val("");
			alert(data)
        });
	});
});

function booking_history(){
	
	$.ajax({
		type: "GET",
		url: "http://localhost:8080/api/get_bookings"
	}).done(function (data) {
		var html =``;
		for(var i=0;i<data.length;i++){
			var row=data[i];
			html += ` <tr><th scope="row">`+(i+1)+`</th>
						 <td>`+row[0]+` `+row[1]+`</td>
						 <td>`+row[2]+`</td>
						 <td>`+row[3]+`</td>
						 <td>`+row[4]+`</td>
						 <td>`+row[5]+`</td>
						 <td>`+row[6]+`</td>
						 <td>`+row[7]+`</td>
						
						 </tr>`;
			
		}
		 $("#body1").html(html);
	});
}
 function car_details(){
	$.ajax({
		type: "GET",
		url: "http://localhost:8080/api/get_cars"
	}).done(function (data) {

		var html = ``;
		for(var i=0;i<data.length;i++){
			var row=data[i];
			html += `<div class="card" style="width: 18rem;">
						<img class="card-img-top" src="./car.jpg" alt="Card image cap">
						<div class="card-body" >
							<h5 class="card-title">`+row[1]+`</h5>
							<p class="card-text">`+row[2]+`</p>
						</div>
						<ul class="list-group list-group-flush">
							<li class="list-group-item"> Engine : `+row[3]+`</li>
							<li class="list-group-item">Width : `+row[4]+`</li>
							<li class="list-group-item">Height : `+row[5]+`</li>
						</ul>
						<div class="card-body">
							<a href="#" class="card-link">Price : $`+row[6]+`</a><br>
							<a href="#" class="card-link">Released Year :`+row[7]+` </a>
						</div>
					</div>`;
			
		}
		 $("#body2").html(html);
	});
 }

function loading(){
	booking_history();
	car_details();
}
