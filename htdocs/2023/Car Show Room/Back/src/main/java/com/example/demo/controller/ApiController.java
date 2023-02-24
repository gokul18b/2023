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
		return service.login(username,password);
	}
	
	@GetMapping("/add_customer/{fname}/{lname}/{email}/{password}/{mobile}")
	public String add_customer(@PathVariable String fname,
			@PathVariable String lname,
			@PathVariable String email,
			@PathVariable String password,
			@PathVariable String mobile) {
		dao.add_customer(fname,lname,email,password,mobile);
		return "Customer Registration Sucessfully Completed";
	}
	
	@GetMapping("/add_car/{carname}/{model}/{engine}/{width}/{height}/{price}/{year}")
	public String add_car(
			@PathVariable String carname,
			@PathVariable String  model,
			@PathVariable String engine,
			@PathVariable String width,
			@PathVariable String height,
			@PathVariable String price,
			@PathVariable String year
			) {
		dao.add_car(carname,model,engine,width,height,price,year);
		return "Car Sucessfully Registered";
	}
	
	
	@GetMapping("/get_cars")
	public List<Object[]> get_cars() {
		return dao.get_cars();
		
	}
	
	@GetMapping("/add_booking/{customer_id}/{car_id}/{expected}/{suggession}")
	public String add_booking(@PathVariable String customer_id, @PathVariable String car_id,@PathVariable String expected, @PathVariable String suggession) {
		dao.add_booking(customer_id,car_id,expected,suggession);
		return "Booking Sucessfully Completed";
	}
	
	@GetMapping("/get_bookings")
	public List<Object[]> get_bookings() {
		return dao.get_bookings();
		
	}
	
	
	

	
	
}
	
	
	
	

