package com.hodu.domain.payment.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hodu.domain.model.ItemDTO;
import com.hodu.domain.model.ItemSelectDTO;
import com.hodu.domain.model.MemberDTO;
import com.hodu.domain.model.PaymentDTO;
import com.hodu.domain.payment.mapper.PaymentMapper;

@Service
public class PaymentServiceImpl implements PaymentService {

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

	@Override
	public int changemoney(PaymentDTO dto) {

		return pay_mapper.changemoney(dto);
	}

	@Override
	public PaymentDTO countpeople(int sel_postnum) {

		return pay_mapper.countpeople(sel_postnum);
	}

	@Override
	public int changepeople(PaymentDTO dto) {

		return pay_mapper.changepeople(dto);
	}

	@Override
	public ItemDTO boardinfo(int item_code) {

		return pay_mapper.boardinfo(item_code);
	}

	@Override
	public List<ItemSelectDTO> boardtime(int item_code){
		
		return pay_mapper.boardtime(item_code);
	}

}
