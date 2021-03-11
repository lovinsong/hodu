package com.hodu.domain.payment.controller;

import java.util.Calendar;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.hodu.domain.model.ItemDTO;
import com.hodu.domain.model.ItemSelectDTO;
import com.hodu.domain.model.MemberDTO;
import com.hodu.domain.model.PaymentDTO;
import com.hodu.domain.payment.service.PaymentService;

@Controller
public class paymentController {

	@Autowired
	PaymentService pay_service;

	@GetMapping(value = "/hodu/payment/cart")
	public void basketGET(Model model, @RequestParam(required = false,defaultValue="1") int item_code) {
		model.addAttribute("item_code", item_code);
		model.addAttribute("dto", pay_service.boardinfo(item_code));
		
	}

	@GetMapping(value = "/hodu/payment/payment")
	public void paymentGET(Model model, @RequestParam(required = false,defaultValue="1") int item_code, @RequestParam(required = false,defaultValue="1") int apply_people) {
		
		ItemDTO dto = pay_service.boardinfo(item_code);
		dto.setApply_people(apply_people);
		
		model.addAttribute("dto", dto);
		
		
		
	}

	@GetMapping(value = "/hodu/payment/okpayment")
	public void okPaymentGET(Model model, PaymentDTO dto) {


	}

	@GetMapping(value = "/hodu/payment/refundform")
	public void refundformGET() {

	}


	@PostMapping(value = "/hodu/payment/okpayment")
	public void okPaymentPOST(Model model, PaymentDTO dto, HttpServletRequest req) throws Exception {
		
		MemberDTO member = (MemberDTO)req.getSession().getAttribute("member") == null ? null : (MemberDTO)req.getSession().getAttribute("member");
		
		// 현재 년도, 월, 일
		Calendar cal = Calendar.getInstance();

		// 현재 년도, 월, 일
		int year = cal.get(cal.YEAR);
		int month = cal.get(cal.MONTH) + 1;
		int date = cal.get(cal.DATE);

		int order_num = (int) (Math.random() * 1000 + 1);

		String day = Integer.toString(year) + Integer.toString(month) + Integer.toString(date);
		int order_number = Integer.parseInt(day + order_num);

		dto.setMember_id(member.getMember_id());
		
		dto.setOrder_num(order_number);
		pay_service.insertorder(dto);
		
		
		System.out.println(dto);
		model.addAttribute("dto", dto);
		

		// 클래스 정보 받아오고
		// payment에서 받아온 클래스 시간 (radio에서 받아온 시간)
		// 클래스 제목 받아오고
		// 주문번호 만들기(sysdate로 년월일 + 4자리 랜덤)
		// 결제날짜는 당일!생성

		// 총결제는 전페이지에서 받아온 수업료 * 신청인원 받아오기

		// 남은 호두 보여주자..일단
	}

}
