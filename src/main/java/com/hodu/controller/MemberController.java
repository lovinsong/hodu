package com.hodu.controller;

import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
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
//@RequestMapping(value = "/hodu/")
@Log4j
public class MemberController {

	@Autowired
	private MemberService service;

	@Autowired
	private JavaMailSender mailSender;

	// 메인페이지
	@GetMapping(value = "mainpage")
	public void mainPageGET() {
	}

	// 회원가입 페이지 이동
	@GetMapping(value = "/hodu/account/join")
	public void loginGET() {
	}

	// 로그인 페이지 이동
	@GetMapping(value = "/hodu/account/login")
	public void joinGET() {
	}

	@PostMapping(value = "/hodu/account/join")
	public String addMember(Model model, MemberDTO member) {

		service.createMember(member);

		return "redirect:/";
	}

	//아이디 중복확인
	@RequestMapping(value = "/hodu/account/memberIdChk", method = RequestMethod.POST)
	@ResponseBody 
	public String memberIdChkPOST(String member_id) throws Exception{ 
		
		int result = service.idCheck(member_id); 
		log.info("결과값 = " + result); 
		if(result != 0) { 
			return "fail"; // 중복 아이디가 존재 
		} else { 
			return "success"; // 중복 아이디 x 
			}
	} // memberIdChkPOST() 종료
	
	//닉네임 중복확인
	@RequestMapping(value = "/hodu/account/memberNickChk", method = RequestMethod.POST)
	@ResponseBody 
	public String memberNickChkPOST(String member_nickname) throws Exception{ 
		
		int result = service.nickCheck(member_nickname); 
		log.info("결과값 = " + result); 
		if(result != 0) { 
			return "fail"; // 중복  
		} else { 
			return "success"; // 중복 x 
			}
	} 
	//휴대폰 중복확인
	@RequestMapping(value = "/hodu/account/memberPhoneChk", method = RequestMethod.POST) 
	@ResponseBody 
	public String memberPhoneChkPOST(String member_phone) throws Exception{ 
		
		int result = service.phoneCheck(member_phone); 
		log.info("결과값 = " + result); 
		if(result != 0) { 
			return "fail";
		} else { 
			return "success"; 
			}
	} 
	
	//이메일 중복확인
	@RequestMapping(value = "/hodu/account/memberEmailChk", method = RequestMethod.POST) 
	@ResponseBody 
	public String memberEmailChkPOST(String member_email) throws Exception{ 
		
		int result = service.emailCheck(member_email); 
		log.info("결과값 = " + result); 
		if(result != 0) { 
			return "fail"; 
		} else { 
			return "success"; 
			}
	} 


	


	/* 이메일 인증 */
	@RequestMapping(value = "/hodu/account/mailCheck", method = RequestMethod.GET)
	@ResponseBody
	public String mailCheckGET(String email) throws Exception {

		/* 뷰(View)로부터 넘어온 데이터 확인 */
		log.info("이메일 데이터 전송 확인");
		log.info("인증번호 : " + email);

		// 인증 번호 생성
		Random ran = new Random();
		int checkNum = ran.nextInt(88888) + 11111;
		log.info("인증번호" + checkNum);

		/* 이메일 보내기 */
		String setFrom = "mangisong2@gmail.com";
		String toMail = email;
		String title = "호두 멤버 가입 인증 이메일 입니다.";
		String content = "호두 홈페이지를 방문해주셔서 감사합니다." + "<br><br>" + "인증 번호는 " + checkNum + "입니다." + "<br>"
				+ "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";

		try {

			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(content, true);
			mailSender.send(message);

		} catch (Exception e) {
			e.printStackTrace();
		}

		String num = Integer.toString(checkNum);

		return num;
	}
	
	// 메인 페이지 이동 임시!!!
	@GetMapping(value = "/hodu/account/mainpage")
	public String toMain() {
		return "/hodu/mainpage";
	}

}
