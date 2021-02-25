package com.hodu.controller;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
@Log4j
public class MemberController {

	@Autowired
	private MemberService service;

	@Autowired
	private JavaMailSender mailSender;

	// 메인페이지
	@GetMapping(value = "/hodu/mainpage")
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
	// 메인페이지 로그아웃
	@GetMapping(value = "/hodu/account/logout")
	public String logoutMainGET(HttpServletRequest request) throws Exception{
        
		HttpSession session = request.getSession();
		
		session.invalidate();
		
		return "redirect:/hodu/mainpage";
    }



	// 로그인 처리
	@RequestMapping(value = "/hodu/account/login", method = RequestMethod.POST)
	public String loginPOST(HttpServletRequest request, MemberDTO member, RedirectAttributes rttr) throws Exception {

		HttpSession session = request.getSession();
		MemberDTO memberdto = service.memberLogin(member); // 제출한아이디와 일치하는 아이디 있는지

		if (memberdto == null) { // 일치하지 않는 아이디, 비밀번호 입력 경우

			int result = 0;
			rttr.addFlashAttribute("result", result);
			return "redirect:/hodu/account/login";

		}

		session.setAttribute("member", memberdto); // 일치하는 아이디, 비밀번호 경우 (로그인 성공)

		return "redirect:/hodu/mainpage";

	}

	// 회원가입
	@PostMapping(value = "/hodu/account/join")
	public String addMember(MemberDTO member) throws Exception {

		service.createMember(member);

		return "redirect:/";
	}

	@RequestMapping(value = "/user/idCheck", method = RequestMethod.GET)
	@ResponseBody
	public int idCheck(@RequestParam("memberId") String member_id) {

		return service.userIdCheck(member_id);
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
		String setFrom = "hodu.manager@gmail.com";
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

}
