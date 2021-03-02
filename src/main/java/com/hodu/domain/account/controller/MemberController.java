package com.hodu.domain.account.controller;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hodu.domain.account.service.MemberService;
import com.hodu.domain.model.MemberDTO;
import com.hodu.domain.util.UserSha256;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class MemberController {

	@Autowired
	private MemberService service;

	@Autowired
	private JavaMailSender mailSender;

	// 메인 페이지 이동
	@GetMapping(value = "/hodu/main/mainpage")
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
	public String logoutMainGET(HttpServletRequest request) throws Exception {

		HttpSession session = request.getSession();

		session.invalidate();

		return "redirect:/hodu/main/mainpage";
	}

	// 메인페이지-> 마이페이지 이동
	@GetMapping(value = "/hodu/mypage/mypage")
	public void mypageMainGET() {

	}

	// 로그인 처리
	@PostMapping(value = "/hodu/account/login")
	public String loginPOST(HttpServletRequest request, MemberDTO member, RedirectAttributes rttr) throws Exception {

		HttpSession session = request.getSession();
		
		// 비밀번호 암호화 (sha256 이용)
		String encryPassword = UserSha256.encrypt(member.getMember_pw());
		member.setMember_pw(encryPassword);
		
		MemberDTO memberdto = service.memberLogin(member); // 제출한아이디와 일치하는 아이디 있는지

		if (memberdto == null) { // 일치하지 않는 아이디, 비밀번호 입력 경우

			int result = 0;
			rttr.addFlashAttribute("result", result);
			return "redirect:/hodu/account/login";

		}

		session.setAttribute("member", memberdto); // 일치하는 아이디, 비밀번호 경우 (로그인 성공)

		return "redirect:/hodu/main/mainpage";

	}

	// 회원가입 처리
	@PostMapping(value = "/hodu/account/join")
	public String addMember(MemberDTO member) throws Exception {

		// 암호 확인
//		System.out.println("첫번째:" + member.getMember_pw());

		// 비밀번호 암호화 (sha256 이용)
		String encryPassword = UserSha256.encrypt(member.getMember_pw());
		member.setMember_pw(encryPassword);
	
		// 암호 확인
//		System.out.println("두번째:" + member.getMember_pw());

		// 회원 추가
		service.createMember(member);

		return "redirect:/hodu/main/mainpage";
	}

	// 아이디 중복확인
	@PostMapping(value = "/hodu/account/memberIdChk")
	@ResponseBody
	public String memberIdChkPOST(String member_id) throws Exception {

		int result = service.idCheck(member_id);
		log.info("결과값 = " + result);
		if (result != 0) {
			return "fail"; // 중복 아이디가 존재
		} else {
			return "success"; // 중복 아이디 x
		}
	} // memberIdChkPOST() 종료

	// 닉네임 중복확인
	@PostMapping(value = "/hodu/account/memberNickChk")
	@ResponseBody
	public String memberNickChkPOST(String member_nickname) throws Exception {

		int result = service.nickCheck(member_nickname);
		log.info("결과값 = " + result);
		if (result != 0) {
			return "fail"; // 중복
		} else {
			return "success"; // 중복 x
		}
	}

	@PostMapping(value = "/hodu/mypage/memberNickChk")
	@ResponseBody
	public String memberNickChkUpdatePOST(String member_nickname, String member_id, MemberDTO member) throws Exception {

		int result = service.nickCheck(member_nickname);
		String r = service.updateNickCheck(member_id);

		log.info("결과값 = " + result);
		if (r.equals(member.getMember_nickname().toString())) {
			return "success";
		} else {
			if (result != 0) {
				return "fail";
			}
			return "success";
		}

	}

	// 휴대폰 중복확인
	@PostMapping(value = "/hodu/account/memberPhoneChk")
	@ResponseBody
	public String memberPhoneChkPOST(String member_phone) throws Exception {

		int result = service.phoneCheck(member_phone);
		log.info("결과값 = " + result);
		if (result != 0) {
			return "fail";
		} else {
			return "success";
		}
	}

	// 이메일 중복확인
	@PostMapping(value = "/hodu/account/memberEmailChk")
	@ResponseBody
	public String memberEmailChkPOST(String member_email) throws Exception {

		int result = service.emailCheck(member_email);
		log.info("결과값 = " + result);
		if (result != 0) {
			return "fail";
		} else {
			return "success";
		}
	}

	/* 이메일 인증 */
	@GetMapping(value = "/hodu/account/mailCheck")
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

	// 로그인 하단 메인 페이지 이동버튼
	@GetMapping(value = "/hodu/account/mainpage")
	public String toMain() {
		return "/hodu/main/mainpage";
	}

	// 마이페이지 -> 내정보 수정 이동
	@GetMapping(value = "/hodu/mypage/mypage/update")
	public String myInfoUpdate() throws Exception {
		return "redirect:/hodu/mypage/update";
	}

	@GetMapping(value = "/hodu/mypage/update")
	public void myInfoUpdate2() throws Exception {

	}

	// 정보 수정
	@PostMapping(value = "/hodu/mypage/update")
	public String myInfoUpdatePOST(HttpServletRequest request, MemberDTO member) throws Exception {
		HttpSession session = request.getSession();
		service.updateMember(member);
		MemberDTO memberdto = service.memberInfo(member.getMember_id());
		session.setAttribute("member", memberdto);
		return "redirect:/hodu/mypage/mypage";
	}

	// 회원 탈퇴
	@GetMapping(value = "/hodu/mypage/delete")
	public String toDeletePage() throws Exception {
		return "redirect:/hodu/account/delete-member";
	}
	@GetMapping(value = "/hodu/account/delete-member")
	public void deletePage() throws Exception {

	}

	// 회원 탈퇴 처리
	@PostMapping(value = "/hodu/account/delete")
	public String deleteMember(HttpServletRequest request, String member_id) throws Exception {
		
		service.deleteMember(member_id);

		HttpSession session = request.getSession();
		session.invalidate();

		return "redirect:/hodu/main/mainpage";
	}

	// 아이디 찾으러 가기
	@GetMapping(value = "/hodu/account/findid")
	public void findIdGET() {

	}

	// 아이디 찾기 처리
	@PostMapping(value = "/hodu/account/findid")
	public String findIdPOST(HttpServletRequest request, MemberDTO member, RedirectAttributes rttr) throws Exception {

		HttpSession session = request.getSession();
		MemberDTO memberdto = service.findId(member); // 제출한 이름과 일치하는 이메일 있는지

		if (memberdto == null) { // 일치하지 않는 아이디, 비밀번호 입력 경우

			int result = 0;
			rttr.addFlashAttribute("result", result);
			return "redirect:/hodu/account/findid";

		}

		session.setAttribute("member", memberdto); // 일치하는 아이디, 비밀번호 경우 (로그인 성공)

		return "redirect:/hodu/account/findidok";

	}

	// 아이디 찾기(완) 가기
	@GetMapping(value = "/hodu/account/findidok")
	public void findOkIdGET() {

	}

	// 비밀번호 찾기
	@PostMapping(value = "/hodu/account/findpass")
	public String findpwPOST(HttpServletRequest request, MemberDTO member, RedirectAttributes rttr) throws Exception {

		HttpSession session = request.getSession();
		MemberDTO memberdto = service.findpw(member); // 제출한 이름과 일치하는 이메일 있는지

		if (memberdto == null) { // 일치하지 않는 아이디, 비밀번호 입력 경우

			int result = 0;
			rttr.addFlashAttribute("result", result);
			return "redirect:/hodu/account/findpass";

		}

		session.setAttribute("member", memberdto); // 일치하는 아이디, 비밀번호 경우 (로그인 성공)

		return "redirect:/hodu/account/forgetchangepw";

	}

	// 비밀번호 찾으러가기
	@GetMapping(value = "/hodu/account/findpass")
	public void findPw2GET() {

	}

	// 비밀번호 찾으러가기 =>삭제?
	@GetMapping(value = "/hodu/account/findokpass")
	public void findOkPwGET() {

	}

	/* 비밀번호 이메일 인증 */
	@GetMapping(value = "hodu/account/mailpwCheck")
	@ResponseBody
	public String mailpwCheckGET(String email) throws Exception {

		/* 인증번호(난수) 생성 */
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;
		log.info("인증번호 " + checkNum);

		/* 이메일 보내기 */
		String setFrom = "lovinsong@kakao.com";
		String toMail = email;
		String title = "비밀번호 확인 인증 이메일 입니다.";
		String content = "오늘도 호두를 이용해주셔서 감사합니다." + "<br><br>" + "인증 번호는 " + checkNum + "입니다." + "<br>"
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

	// 이메일 중복확인
	@PostMapping(value = "/hodu/account/availableEmailChk")
	@ResponseBody
	public String availableEmailChkPOST(String member_id, String member_email) throws Exception {

		String result = service.availableEmailCheck(member_id);

		log.info("결과값 = " + result);
		if (result.equals(member_email)) {
			return "success";
		} else {
			return "fail";
		}
	}

	// 계정 비밀번호 변경
	@GetMapping(value = "/hodu/mypage/account/changepw")
	public String toupdatePw() throws Exception {
		return "redirect:/hodu/account/changepw";
	}
	@GetMapping(value = "/hodu/account/changepw")
	public void updatePw() throws Exception {
	}
	@PostMapping(value = "/hodu/account/updatepw")
	public String updatePwPOST(HttpServletRequest request, MemberDTO member) throws Exception {
		HttpSession session = request.getSession();
		
		// 비밀번호 암호화 (sha256 이용)
		String encryPassword = UserSha256.encrypt(member.getMember_pw());
		member.setMember_pw(encryPassword);
		
		service.updatePw(member);	
		MemberDTO memberdto = service.memberInfo(member.getMember_id());
		session.setAttribute("member", memberdto);
		return "redirect:/hodu/mypage/mypage";
	}
	
	//비밀번호 분실시 비번 변경
	@GetMapping(value = "/hodu/account/forgetchangepw")
	public void forgetUpdatePw() throws Exception {
	}
	@PostMapping(value = "/hodu/account/forgetchangepw")
	public void forgetchangePwPOST(HttpServletRequest request, MemberDTO member) throws Exception {
		HttpSession session = request.getSession();
		MemberDTO memberdto = service.memberInfo(member.getMember_id());
		session.setAttribute("member", memberdto);
	}
	@PostMapping(value = "/hodu/account/forgetupdatepw")
	public String forgetUpdatePwPOST(HttpServletRequest request, MemberDTO member) throws Exception {
		HttpSession session = request.getSession();
		
		// 비밀번호 암호화 (sha256 이용)
		String encryPassword = UserSha256.encrypt(member.getMember_pw());
		member.setMember_pw(encryPassword);
		service.updatePw(member);

		session.invalidate();
		return "redirect:/hodu/account/login";
	}
}
