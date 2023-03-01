package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.dao.ApiDao;
import com.example.demo.service.ApiService;

@RestController
@RequestMapping(value = { "/api" })
public class ApiController {

	@Autowired
	ApiService service;

	@Autowired
	ApiDao dao;

	@GetMapping("/login/{username}/{password}")
	public String login(@PathVariable String username, @PathVariable String password) {
		return service.login(username, password);
	}

	@PostMapping("/agent_register/{firstname}/{lastname}/{dob}/{gender}/{emailid}/"
			+ "{mobile}/{age}/{state}/{city}/{pincode}/{address}/{profession}/{expierence}/{password}")
	public String member_register(@PathVariable String firstname, @PathVariable String lastname,
			@PathVariable String dob, @PathVariable String gender, @PathVariable String emailid,
			@PathVariable String mobile, @PathVariable String age, @PathVariable String state,
			@PathVariable String city, @PathVariable String pincode, @PathVariable String address,
			@PathVariable String profession, @PathVariable String expierence, @PathVariable String password) {
		dao.add_agent(firstname, lastname, dob, gender, emailid, mobile, age, state, city, pincode, address, profession,
				expierence, password);
		return "Member Register Sucessfully";
	}

	@PostMapping("/policy_register/{name}/{category}/{period}/{premium}/{date}/" + "{expierydate}/{amount}")
	public String add_policy(@PathVariable String name, @PathVariable String category, @PathVariable String period,
			@PathVariable String premium, @PathVariable String date, @PathVariable String expierydate,
			@PathVariable String amount) {
		dao.add_policy(name, category, period, premium, date, expierydate, amount);
		return "Policy Register Sucessfully";
	}

	@PostMapping("/add_customer/{fname}/{lname}/{dob}/{mobile}/{age}/"
			+ "{gender}/{state}/{city}/{pincode}/{address}/{username}/{password}")
	public String add_customer(@PathVariable String fname, @PathVariable String lname, @PathVariable String dob,
			@PathVariable String mobile, @PathVariable String age, @PathVariable String gender,
			@PathVariable String state, @PathVariable String city, @PathVariable String pincode,
			@PathVariable String address, @PathVariable String username, @PathVariable String password) {
		dao.add_customer(fname, lname, dob, mobile, age, gender, state, city, pincode, address, username, password);
		return "Policy Register Sucessfully";
	}

	@PostMapping("/add_payment/{policy_id}/{number}/{expdate}/{amount}")
	public String add_payment(@PathVariable String policy_id, @PathVariable String number, @PathVariable String expdate,
			@PathVariable String amount) {
		dao.add_payment(policy_id, number, expdate, amount);
		return "Policy Register Sucessfully";
	}

	@PostMapping("/add_payment/{policy_id}/{customer_id}")
	public String add_payment(@PathVariable Integer policy_id, @PathVariable Integer customer_id) {
		dao.add_payment(policy_id, customer_id);
		return "Payment Sucessfully Completed";
	}
	
	@GetMapping("/get_report")
	public List<Object[]> get_report() {
		return dao.get_report();
		
	}

	
}
