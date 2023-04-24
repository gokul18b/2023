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
@RequestMapping(value = { "/sports/api" })
public class ApiController {

	@Autowired
	ApiService service;
	
	@Autowired
	ApiDao dao;

	@GetMapping("/login/{username}/{password}")
	public String login(@PathVariable String username,@PathVariable String password) {
		return service.login(username,password);
	}
	@GetMapping("/add_user/{mobile}/{email}/{username}/{password}")
	public String add_user(@PathVariable String mobile,
			@PathVariable String email,
			@PathVariable String  username,
			@PathVariable String password) {
		dao.add_user(mobile,email,username,password);
		return "User Register Sucessfully";
	}
	
	@GetMapping("/test")
	public String test() {
		return "test";
	}
	
	@GetMapping("/add_event/{name}/{category}/{amount}/{total}/{location}/"
			+ "{contactperson}/{mobile}/{eventdate}")
	public String add_event(@PathVariable String name,
			@PathVariable String category,
			@PathVariable String  amount,
			@PathVariable String total,
			@PathVariable String location,
			@PathVariable String contactperson,
			@PathVariable String mobile,
			@PathVariable String eventdate) {
		dao.add_event(name,category,amount,total,location,contactperson,mobile,eventdate);
		return "Event Register Sucessfully";
	}
	
	@GetMapping("/add_team/{userid}/{teamname}/{total}/{captain}/{mobile1}/{mobile2}/"
			+ "{address}")
	public String add_team(@PathVariable Integer userid,
			@PathVariable String teamname,
			@PathVariable String  captain,
			@PathVariable String mobile1,
			@PathVariable String mobile2,
			@PathVariable String address,
			@PathVariable String total) {
		dao.add_event(userid,teamname,total,captain,mobile1,mobile2,address);
		return "Team Register Sucessfully";
	}
	
	@GetMapping("/book_event/{eventid}/{teamid}/{category}/{amount}/{total}/{location}/{contactperson}/{mobile}/{eventdate}")
	public String book_event(@PathVariable Integer eventid,
			@PathVariable Integer teamid,
			@PathVariable String  category,
			@PathVariable String amount,
			@PathVariable String total,
			@PathVariable String location,
			@PathVariable String contactperson,
			@PathVariable String mobile,
			@PathVariable String eventdate) {
		dao.add_booking(eventid,teamid,category,amount,total,location,contactperson,mobile,eventdate);
		return "Team Register Sucessfully";
	}
	
	@GetMapping("/get_events")
	public List<Object[]> get_event() {
		return dao.get_event();
		
	}	
	
	@GetMapping("/get_teams/{id}")
	public List<Object[]> get_teams(@PathVariable Integer id) {
		return dao.get_teams(id);
		
	}	
	@GetMapping("/get_booking")
	public List<Object[]> get_booking() {
		return dao.get_booking();
		
	}
	
	
	
}
