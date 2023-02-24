
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
	loading();
});

function booking(carid,customer_id){


	$.ajax({
		type: "GET",
		url: "http://localhost:8080/api/add_booking/" + encodeURIComponent(customer_id) + "/" + carid+"/"+$("#exp"+carid).val()+"/"+	$("#sugg"+carid).val()
	}).done(function (data) {
		$("#exp"+carid).val("")
		$("#sugg"+carid).val("")
		alert(data)
	});
}
function car_details() {
	$.ajax({
		type: "GET",
		url: "http://localhost:8080/api/get_cars"
	}).done(function (data) {
		const queryString = window.location.search;
		const urlParams = new URLSearchParams(queryString);
		const customer_id = urlParams.get('id')
		for (var i = 0; i < data.length; i++) {
			var html = ``;
			var row = data[i];

			html += `<div class="card" style="width: 18rem;">
						<img class="card-img-top" src="./car.jpg" alt="Card image cap">
						<div class="card-body" >
							<h5 class="card-title">`+ row[1] + `</h5>
							<p class="card-text">`+ row[2] + `</p>
						</div>
						<ul class="list-group list-group-flush">
							<li class="list-group-item"> Engine : `+ row[3] + `</li>
							<li class="list-group-item">Width : `+ row[4] + `</li>
							<li class="list-group-item">Height : `+ row[5] + `</li>
						</ul>
						<div class="card-body">
							<a href="#" class="card-link">Price : $`+ row[6] + `</a><br>
							<a href="#" class="card-link">Released Year :`+ row[7] + ` </a>
						</div>
						<ul class="list-group list-group-flush">
							<li class="list-group-item"> <div class="form-group">
							<label>Expected Amout</label>
							<input id="exp`+row[0]+`" class="form-control" id="1">
						  </div></li>
							<li class="list-group-item"><div class="form-group">
							<label>Suggesstion</label>
							<input id="sugg`+row[0]+`" class="form-control" id="1">
						  </div></li>
							
						</ul>
						<div class="card-body">
                    		<button onclick="booking(`+row[0]+`,`+customer_id+`)" type="submit" class="btn btn-primary">Book</button>
              			</div>
					</div>`;


		}
		$("#body2").html(html);
	});
}

function loading() {

	car_details();
}
