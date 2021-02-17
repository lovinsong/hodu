package com.hodu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.hodu.service.TestService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class TestController {
	
	@Autowired
	TestService service;
	
	@GetMapping(value="Test")
	public void Test(){
		
	}

}
