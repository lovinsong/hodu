package com.hodu.domain.payment.mapper;

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
	public void update() {

		MemberDTO member = new MemberDTO();
		ItemDTO item = new ItemDTO();

		member.setMember_id("master3");
		item.setItem_code(44);

//		pm.membercash("master3");
//		pm.itemprice(44);
		
		pm.changemoney(member, item);
		
		log.info(pm.itemprice(44));
		
		
	}

}
