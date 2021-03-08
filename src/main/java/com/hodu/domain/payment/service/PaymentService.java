package com.hodu.domain.payment.service;

import com.hodu.domain.model.ItemDTO;
import com.hodu.domain.model.MemberDTO;

public interface PaymentService {

	// 호두 가져오기
	public MemberDTO membercash(String member_id);
	
	// 가격 가져오기
	public ItemDTO itemprice(int item_code);
	
	
}
