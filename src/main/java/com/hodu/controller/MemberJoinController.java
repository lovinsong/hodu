package com.hodu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hodu.model.MemberDTO;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping(value="/hodu/account/")
@Log4j
public class MemberJoinController {
	
	
	@GetMapping(value="join")
	public void addJoin(RedirectAttributes rttr, MemberDTO mem) {
		
	}
}
