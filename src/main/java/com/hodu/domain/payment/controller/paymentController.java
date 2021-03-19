package com.hodu.domain.payment.controller;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hodu.domain.model.ItemDTO;
import com.hodu.domain.model.MemberDTO;
import com.hodu.domain.model.PaymentDTO;
import com.hodu.domain.payment.service.PaymentService;

@Controller
public class paymentController {

	@Autowired
	PaymentService pay_service;

	@GetMapping(value = "/hodu/payment/cart")
	public void basketGET(Model model, @RequestParam(required = false, defaultValue = "1") int item_code) {
		model.addAttribute("item_code", item_code);
		model.addAttribute("dto", pay_service.boardinfo(item_code));

	}

	@GetMapping(value = "/hodu/payment/payment")
	public void paymentGET(Model model, @RequestParam(required = false, defaultValue = "1") int item_code,
			@RequestParam(required = false, defaultValue = "1") int apply_people) {

		ItemDTO dto = pay_service.boardinfo(item_code);

		dto.setApply_people(apply_people);

		model.addAttribute("dto", dto);

	}

	@GetMapping(value = "/hodu/payment/okpayment")
	public void okPaymentGET(Model model, PaymentDTO member_dto, HttpServletRequest req,
			@RequestParam(required = false, defaultValue = "1") int item_code,
			@RequestParam(required = false, defaultValue = "1") int apply_people) throws Exception {

		ItemDTO dto = pay_service.boardinfo(item_code);

		dto.setApply_people(apply_people);

		model.addAttribute("dto", dto);

		MemberDTO member = (MemberDTO) req.getSession().getAttribute("member") == null ? null
				: (MemberDTO) req.getSession().getAttribute("member");

		//주문번호 생성 하는 똥같은 로직
		
		// 현재 년도, 월, 일
		Calendar cal = Calendar.getInstance();

		// 현재 년도, 월, 일
		int year = cal.get(cal.YEAR);
		int month = cal.get(cal.MONTH) + 1;
		int date = cal.get(cal.DATE);

		int order_num = (int) (Math.random() * 1000 + 1);

		String day = Integer.toString(year) + Integer.toString(month) + Integer.toString(date);
		int order_number = Integer.parseInt(day + order_num);

		member_dto.setMember_id(member.getMember_id());

		member_dto.setOrder_num(order_number);
		
		dto.setOrder_num(order_number);
				
		pay_service.insertorder(member_dto);

		pay_service.changemoney(member_dto);	

	}

	@GetMapping(value = "/hodu/payment/refundform")
	public void refundformGET() {

	}

	@PostMapping(value = "/hodu/payment/okpayment")
	public void okPaymentPOST() throws Exception {

	}

}
