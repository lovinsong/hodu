package com.hodu.domain.account.mapper;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTests {
	
	@Autowired
	private MemberMapper membermapper;
	
	@Test
	@Ignore
	public void idTest() {
		String id = "master"; // 존재하는 아이디 
		String id2 = "test123"; // 존재하지 않는 아이디 
		membermapper.idCheck(id); 
		membermapper.idCheck(id2);
	}
	
	@Test
	@Ignore
	public void nickTest() {
		String nick1 = "김관리"; // 존재하는 
		String nick2 = "test123"; // 존재하지 않는  
		membermapper.nickCheck(nick1); 
		membermapper.nickCheck(nick2);
	}
	
	@Test
	@Ignore
	public void phoneTest() {
		String phone1 = "01022222222"; // 존재하는
		String phone2 = "51656856895"; // 존재하지 않는
		membermapper.nickCheck(phone1); 
		membermapper.nickCheck(phone2);
	}
	
	@Test
	@Ignore
	public void emailTest() {
		String email1 = "a@a.c"; // 존재하는
		String email2 = "x@x.c"; // 존재하지 않는
		membermapper.emailCheck(email1); 
		membermapper.emailCheck(email2);
	}
	
	

}
