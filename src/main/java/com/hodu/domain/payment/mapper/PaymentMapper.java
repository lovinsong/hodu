package com.hodu.domain.payment.mapper;

import java.util.List;

import com.hodu.domain.model.ItemDTO;
import com.hodu.domain.model.ItemSelectDTO;
import com.hodu.domain.model.MemberDTO;
import com.hodu.domain.model.PaymentDTO;

public interface PaymentMapper {

	// 호두 가져오기
	public MemberDTO membercash(String member_id);

	// 가격 가져오기
	public ItemDTO itemprice(int item_code);

	// 게시글 받아오기
	public ItemDTO getItem(int item_code);

	// 게시글 정보 가져오기
	public List<ItemSelectDTO> getItemSelect(int item_code);

	// 결제
	public int changemoney(PaymentDTO dto);

	// 게시글에서 총인원 받아오기
	public PaymentDTO countpeople(int sel_postnum);

	// 수강인원 변경하기
	public int changepeople(PaymentDTO dto);

	// 게시글 시간 불러오기
	public List<ItemSelectDTO> boardtime(int item_code);

	// 영수증 생성후 넣기
	public int insertorder(PaymentDTO payment);
}
