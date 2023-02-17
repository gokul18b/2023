package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.dao.ApiDao;

import com.example.demo.response.GetCitizenResponse;
import com.example.demo.response.GetComplaintResponse;
import com.example.demo.service.ApiService;


@RestController
@RequestMapping(value = { "/api" })
public class ApiController {

	@Autowired
	ApiService service;
	
	@Autowired
	ApiDao dao;

	@GetMapping("/login/{username}/{password}")
	public String login(@PathVariable String username,@PathVariable String password) {
		return dao.login(username,password);
	}
	
	
	@GetMapping("/add_customer/{name}/{email}/{phone}/{address}/{pincode}")
	public String add_customer(@PathVariable String name,
			@PathVariable String email,
			@PathVariable String  phone,
			@PathVariable String  address,
			@PathVariable String  pincode
			) {
		dao.add_customer(name,email,phone,address,pincode);
		return "Customer Register Sucessfully";
	}
	@GetMapping("/add_ship/{type}/{number}/{model}")
	public String add_ship(@PathVariable String type,
			@PathVariable String number,
			@PathVariable String  model
			) {
		dao.add_ship(type,number,model);
		return "Ship Register Sucessfully";
	}
	
	@GetMapping("/add_order/{shipid}/{cusid}/{address}/{picdate}/{deliverydate}/{weight}/{packing}/{comname}/{comaddress}/{mobile}/{picklocation}/{droplocation}/{amount}")
	public String add_order(@PathVariable Integer shipid,@PathVariable Integer cusid,
			@PathVariable String address,
			@PathVariable String  picdate,
			@PathVariable String  deliverydate,
			@PathVariable String  weight,
			@PathVariable String packing,
			@PathVariable String  comname,
			@PathVariable String  comaddress,
			@PathVariable String  mobile,
			@PathVariable String picklocation,
			@PathVariable String  droplocation,
			@PathVariable String  amount
			) {
		dao.add_order(shipid,cusid,address,picdate,deliverydate,weight,packing,comname,comaddress,mobile,picklocation,droplocation,amount);
		return "Order Register Sucessfully";
	}
	
	
	@GetMapping("/get_customers")
	public List<Object[]> get_customers() {
		return dao.get_customers();
		
	}	
	
	@GetMapping("/get_ships")
	public List<Object[]> get_ships() {
		return dao.get_ships();
		
	}	
	
	@GetMapping("/get_orders")
	public List<Object[]> get_orders() {
		return dao.get_orders();
		
	}	
	
	
	
	
	
	
}
