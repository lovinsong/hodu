package com.hodu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hodu.model.MemberDTO;
import com.hodu.service.MemberService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping(value="/hodu/account/")
@Log4j
public class MemberController {
	
	private MemberService service;
	
		//post정보를 받아서 여기서 서비스를 돌려서 쿼리문드로 디비에 넣고 
		//insert 1일때 등록성공 그게 성공하면 성공페이지로(redirect로 메인페이지)
	
	
	@GetMapping(value = "join")
	public String addEmp(RedirectAttributes rttr, MemberDTO mem) {
	      int result = service.createMember(mem);
	      String message = result > 0 ? "새로운 사원이 추가되었습니다." : "추가가 안됨";
	      rttr.addAttribute("message", message);

	      return "redirect:/login";
	   }
	
	
}
