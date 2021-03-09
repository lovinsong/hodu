package com.hodu.domain.payment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.hodu.domain.model.PaymentDTO;
import com.hodu.domain.payment.service.PaymentService;

@Controller
public class paymentController {

	@Autowired
	PaymentService pay_service;
	
	@GetMapping(value = "/hodu/payment/cart")
	public void basketGET() {
		
	}

	@GetMapping(value = "/hodu/payment/payment")
	public void paymentGET() {
		

		
	}
	
	@GetMapping(value = "/hodu/payment/okpayment")
	public void okPaymentGET(Model model, PaymentDTO dto) {
		
		//model.addAttribute("dto", dto);
		
		
		/*
		// 받은 DTO를 계산하고 service통해 db 업데이트
		
		PaymentDTO dto = new PaymentDTO();
		
		pay_service.countpeople(18);
		
		System.out.println(pay_service.countpeople(18)); // 클래스 총인원 나옴
		
		// 총 인원(paymentDTO O) - DTO 받아온 인원수(paymentDTO DB 컬럼 X) = 바뀐 인원 수(paymentDTO)
		// 바뀐 인원수(paymentDTO) -> 조회 한걸 update
		// 바뀐 인원수를 가지고 첫페이지에 maxvalue 를 설정
		
		dto.setItem_people(14);
		dto.setSel_postnum(18);
		
		dto.setApply_people(5); // 뺄인원 셋팅
		
		System.out.println(dto.getApply_people()); // 뺄인원 보자
		
		pay_service.changepeople(dto);
		*/
	}

	@GetMapping(value = "/hodu/payment/refundform")
	public void refundformGET() {
		
	}
	
	@PostMapping(value = "/hodu/payment/payment")
	public void paymentPOST(Model model, PaymentDTO dto) {
		
		
		
		// 모델에 신청인원 실음
		model.addAttribute("dto", dto);
		
		
		
	}
	
	@PostMapping(value = "/hodu/payment/okpayment")
	public void okPaymentPOST(Model model, PaymentDTO dto) {
		
		model.addAttribute("dto", dto);
	}
	
}
