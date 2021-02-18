package com.hodu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {
	

	@GetMapping(value = "test")
	public void test(Model model) {
	}

}
