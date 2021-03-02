package com.hodu.domain.account.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hodu.domain.model.MemberDTO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class findidTest {

	@Autowired
	private MemberMapper member_mapper;
	
	@Test
	public void findId() throws Exception{
		
		MemberDTO member = new MemberDTO();
		
		member.setMember_name("비비탄");
		member.setMember_email("lovinsong@kakao.com");
		
		member_mapper.findid(member);
		
		System.out.println("결과 값 : " + member_mapper.findid(member));
		
	}
}
