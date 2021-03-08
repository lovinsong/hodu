package com.hodu.domain.payment.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hodu.domain.model.ItemDTO;
import com.hodu.domain.model.MemberDTO;
import com.hodu.domain.payment.mapper.PaymentMapper;

@Service
public class PaymentServiceImpl implements PaymentService{

	@Autowired
	private PaymentMapper pay_mapper;
	
	
	@Override
	public MemberDTO membercash(String member_id) {
		
		return pay_mapper.membercash(member_id);
	}

	@Override
	public ItemDTO itemprice(int item_code) {
		
		return pay_mapper.itemprice(item_code);
	}

	


}
