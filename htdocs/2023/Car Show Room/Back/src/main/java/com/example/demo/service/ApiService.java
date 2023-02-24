package com.example.demo.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.ApiDao;
@Service
@Transactional
public class ApiService {

	@Autowired
	ApiDao dao;


	


	public String login(String username, String password) {
		// TODO Auto-generated method stub
		return dao.login(username,password);
	}

	
	
}
