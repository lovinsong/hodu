package com.hodu.mapper;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.hodu.model.MemberDTO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
	"file:src/main/webapp/WEB-INF/spring/root-context.xml"
})
@Log4j
public class joinTest {
	
	@Autowired
	private WebApplicationContext context;
	private MockMvc mockmvc;
	
	@Before
	public void setup() {
		mockmvc = MockMvcBuilders.webAppContextSetup(context).build();
	}
	
	@Test
	public void insertTest() {
		MemberDTO mem = new MemberDTO();
		mem.setMember_id("abc");
		mem.setLevel_mentee("BRONZE");
		mem.setLevel_mentor("BRONZE");
		mem.setMember_nickname("abc");
		mem.setMember_pw("1234");
		mem.setMember_name("홍길동");
		mem.setMember_img(null);
		mem.setMember_phone("010-1234-1234");
		mem.setMember_address("서울시 00구 00동");
		mem.setMember_email("abc@naver.com");
		mem.setMember_cash(0);
		Calendar hiredate = Calendar.getInstance();
	      hiredate.set(Calendar.YEAR, 2018);
	      hiredate.set(Calendar.MONTH, 9);
	      hiredate.set(Calendar.DATE, 15);
	      
	      SimpleDateFormat format = new SimpleDateFormat("");
		mem.setMember_regdate(hiredate.getTime());
		mem.setMember_enabled("1");
		mem.setHodu_manager("Y");
		
		
		
		
	}

}
