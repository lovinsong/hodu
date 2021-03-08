package com.hodu.domain.payment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

@Controller
public class paymentController {

	@GetMapping(value = "/hodu/payment/cart")
	public void basketGET() {
		
	}

	@GetMapping(value = "/hodu/payment/payment")
	public void paymentGET() {
		
	}
	
	@GetMapping(value = "/hodu/payment/okpayment")
	public void okPaymentGET() {
		
	}

	@GetMapping(value = "/hodu/payment/refundform")
	public void refundformGET() {
		
	}
	
	
	
}
