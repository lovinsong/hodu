package com.hodu.domain.payment.mapper;

import java.util.Calendar;
import java.util.Date;
import java.util.Random;

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


	}
	@Test
	public void testboardtime() {
		
		Calendar cal = Calendar.getInstance();
		 
		//현재 년도, 월, 일
		int year = cal.get ( cal.YEAR );
		int month = cal.get ( cal.MONTH ) + 1 ;
		int date = cal.get ( cal.DATE ) ;

		Random random = new Random();
		int order_num = (int) (Math.random() * 100000 + 1);
		
//		System.out.println(Integer.toString(year) + Integer.toString(month) + Integer.toString(date));
	
//		System.out.println(order_num);
		
		String day = Integer.toString(year) + Integer.toString(month) + Integer.toString(date);

		System.out.println(day);
		
		System.out.println(day + order_num);
		
		long su2 =  Long.parseLong(day + order_num);
		System.out.println(su2);
	}
	

}
