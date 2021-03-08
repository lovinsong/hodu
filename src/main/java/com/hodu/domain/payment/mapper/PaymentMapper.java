package com.hodu.domain.payment.mapper;

import org.apache.ibatis.annotations.Param;

import com.hodu.domain.model.ItemDTO;
import com.hodu.domain.model.MemberDTO;
import com.hodu.domain.model.PaymentDTO;

public interface PaymentMapper {
	
	// 호두 가져오기
	public MemberDTO membercash(String member_id);
	
	// 가격 가져오기
	public ItemDTO itemprice(int item_code);
	
	
	public MemberDTO changemoney(MemberDTO arg1, ItemDTO arg0);

	
}
