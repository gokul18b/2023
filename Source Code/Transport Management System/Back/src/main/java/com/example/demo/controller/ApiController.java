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
	public Boolean login(@PathVariable String username,@PathVariable String password) {
		return service.login(username,password);
	}
	
	
	@GetMapping("/add_vehicle/{name}/{type}/{number}")
	public String add_vehicle(@PathVariable String name,
			@PathVariable String type,
			@PathVariable String  number
			) {
		dao.add_vehicle(name,type,number);
		return "Vehicle Register Sucessfully";
	}
	
	@GetMapping("/add_driver/{name}/{mobile}/{address}/{license}/{aadhar}/{expierence}/{age}")
	public String add_driver(
	 @PathVariable String name,
	 @PathVariable String mobile, 
	 @PathVariable String address, 
	 @PathVariable String license, 
	 @PathVariable String aadhar, 
	 @PathVariable String expierence, 
	 @PathVariable String age) {
		dao.add_driver(name,mobile,address,license,aadhar,expierence,age);
		return "Diver Register Sucessfully";
	}
	
	@GetMapping("/add_goods/{vehicleid}/{driverid}/{address}/{days}")
	public String goods_register(@PathVariable Integer vehicleid,
			@PathVariable Integer driverid,@PathVariable String address,@PathVariable String days
			) {
		dao.goods_register(vehicleid,driverid,address,days);
		return "Goods Register Sucessfully";
	}
	
	@GetMapping("/get_vehicles")
	public List<Object[]> get_student() {
		return dao.get_vehicles();
		
	}
	
	@GetMapping("/get_drivers")
	public List<Object[]> get_drivers() {
		return dao.get_drivers();
		
	}
	
	@GetMapping("/get_goods")
	public List<Object[]> get_goods() {
		return dao.get_goods();
		
	}
	
	
}
