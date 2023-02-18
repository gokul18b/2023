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
	
	
	@GetMapping("/add_customer/{customer_name}/{mobile}/{email}/{username}/{password}")
	public String add_customer(@PathVariable String customer_name,
			@PathVariable String mobile,
			@PathVariable String  email,
			@PathVariable String username,
			@PathVariable String password
			) {
		dao.add_customer(customer_name,mobile,email,username,password);
		return "User Register Sucessfully";
	}
	
	@GetMapping("/add_house/{name}/{owner}/{contact}/{address1}/{address2}/{city}/{district}/{state}/{landmark}/{pincode}/{squre}/{bedroom}/{hall}/{kitchen}/{others}/{price}")
	public String add_car(
	 @PathVariable String name,
	 @PathVariable String owner, 
	 @PathVariable String contact, 
	 @PathVariable String address1, 
	 @PathVariable String address2, 
	 @PathVariable String city, 
	 @PathVariable String district, 
	 @PathVariable String state, 
	 @PathVariable String landmark, 
	 @PathVariable String pincode, 
	 @PathVariable String squre, 
	 @PathVariable String bedroom, 
	 @PathVariable String hall, 
	 @PathVariable String kitchen, 
	 @PathVariable String others, 
	 @PathVariable String price) {
		dao.add_house(name,owner,contact,address1,address2,city,district,state,landmark,pincode,squre,bedroom,hall,kitchen,others,price);
		return "House Register Sucessfully";
	}
	
	@GetMapping("/add_booking/{customer_id}/{houseid}")
	public String add_car(@PathVariable Integer customer_id,
			@PathVariable Integer houseid
			) {
		dao.add_book(customer_id,houseid);
		return "House Register Sucessfully";
	}	
	
	@GetMapping("/get_houses")
	public List<Object[]> get_houses() {
		return dao.get_houses();
		
	}
	
	@GetMapping("/get_houses/{userId}")
	public List<Object[]> get_houses(@PathVariable Integer userId) {
		return dao.get_houses(userId);
		
	}
	
	@GetMapping("/get_bookings")
	public List<Object[]> get_bookings() {
		return dao.get_bookings();
		
	}
}
