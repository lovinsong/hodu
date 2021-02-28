package com.hodu.domain.account.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.hodu.domain.account.mapper.MemberMapper;
import com.hodu.model.MemberDTO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class loginTest {

	@Autowired
	private MemberMapper member_mapper;

	/* 로그인 쿼리 mapper 메서드 테스트 */
	@Test
	public void memberLogin() throws Exception {

		MemberDTO member = new MemberDTO(); // MemberVO 변수 선언 및 초기화

		/* 올바른 아이디 비번 입력경우 */
		member.setMember_id("master");
		member.setMember_pw("1234");

		/* 올바른 않은 아이디 비번 입력경우 */
		// member.setMemberId("test1123");
		// member.setMemberPw("test1321321");

		member_mapper.memberLogin(member);
		System.out.println("결과 값 : " + member_mapper.memberLogin(member));

	}

}
