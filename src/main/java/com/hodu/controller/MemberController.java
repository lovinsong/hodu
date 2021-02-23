package com.hodu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hodu.model.MemberDTO;
import com.hodu.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@AllArgsConstructor
@Log4j
public class MemberController {
	
	@Autowired
	private MemberService service;
	
		//post정보를 받아서 여기서 서비스를 돌려서 쿼리문드로 디비에 넣고 
		//insert 1일때 등록성공 그게 성공하면 성공페이지로(redirect로 메인페이지)
	
	

    @GetMapping(value = "/hodu/account/join")
    public void addMember() {

    }

    @PostMapping(value = "/hodu/account/join")
    public String addMember(Model model, MemberDTO mem) {

        int result = service.createMember(mem);
        String message = result > 0 ? "추가 성공" : "추가 안됌";
        model.addAttribute("message", message);


        return "redirect:/hodu/account/login";
    }

    @GetMapping(value = "/hodu/account/login")
    public void mainMember(Model model){

    }
    
    @PostMapping(value = "/hodu/account/login")
    public String login(MemberDTO mem) {
    	System.out.println(mem.toString());
    	return "redirect:/hodu/account/login";
    }
    
    @RequestMapping(value = "/user/idCheck", method = RequestMethod.GET)
	@ResponseBody
	public int idCheck(@RequestParam("memberId") String member_id) {

		return service.userIdCheck(member_id);
	}
	

	
}
