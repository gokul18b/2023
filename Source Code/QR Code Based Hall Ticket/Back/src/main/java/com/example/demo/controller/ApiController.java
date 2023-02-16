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
	
	
	@GetMapping("/add_student/{firstname}/{lastname}/{rollno}/{dept}/{classname}/{username}/{password}")
	public String member_register(@PathVariable String firstname,@PathVariable String lastname,
			@PathVariable String rollno,
			@PathVariable String  dept,
			@PathVariable String classname,
			@PathVariable String username,
			@PathVariable String password) {
		dao.studentRegister(firstname,lastname,rollno,dept,classname,username,password);
		return "Student Saved Sucessfully";
	}
	
	@GetMapping("/add_hallticket/{rollno}/{subjectname}/{hallno}/{date}")
	public String add_hallticket(@PathVariable String rollno,@PathVariable String subjectname,
			@PathVariable String hallno,
			@PathVariable String  date) {
		dao.add_hallticket(rollno,subjectname,rollno,hallno,date);
		return "Hall Ticket Generated Sucessfully";
	}
	
	
	@GetMapping("/get_tickets")
	public List<Object[]> get_tickets() {
		return dao.get_tickets();
		
	}
	@GetMapping("/get_ticket/{id}")
	public List<Object[]> get_tickets(@PathVariable Integer id) {
		return dao.get_tickets(id);
		
	}
	
	
	
	
	
}
