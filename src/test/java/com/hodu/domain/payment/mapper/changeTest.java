package com.hodu.domain.payment.mapper;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hodu.domain.model.ItemDTO;
import com.hodu.domain.model.MemberDTO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class changeTest {

	@Autowired
	private PaymentMapper pm;
	
	@Test
	@Ignore
	public void testinfo() {
		
		pm.boardinfo(42);
	
		System.out.println(pm.boardinfo(42));
		
	}
	@Test
	public void testboardtime() {
		
		pm.boardtime(44);
		
		System.out.println(pm.boardtime(44));
		
	}
	

}
