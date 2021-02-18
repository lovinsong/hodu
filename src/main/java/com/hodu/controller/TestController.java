package com.hodu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.hodu.service.TestService;

@Controller
public class TestController {

	@Autowired
	TestService test;

	@GetMapping(value = "test")
	public void test(Model model) {
		

		model.addAttribute("testArr",test.TNameArray());
		model.addAttribute("test1", test.TnameInformation());
		model.addAttribute("test2", test.Tname());
		model.addAttribute("test3", test.TCount());

	}

}
