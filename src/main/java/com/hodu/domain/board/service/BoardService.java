package com.hodu.domain.board.service;


import java.util.List;

import com.hodu.domain.model.InquiryDTO;
import com.hodu.domain.model.ItemDTO;
import com.hodu.domain.model.MainItemDTO;
import com.hodu.domain.model.MyHeartDTO;
import com.hodu.domain.model.NoticeDTO;
import com.hodu.domain.model.SearchDTO;

public interface BoardService {
	
	// itemboard 글 작성 서비스
	public String itemRegist(ItemDTO item) throws Exception;
	
	public List<ItemDTO> itempage(SearchDTO search) throws Exception;
	
	public int getItemCnt(String item_type) throws Exception;
	
	public ItemDTO itemInfo(int item_code, String user) throws Exception;
	
	public void likeChanger(ItemDTO item) throws Exception;
	
	public void notice_regist(NoticeDTO notice) throws Exception;
	
	public List<NoticeDTO> noticepage(int pagenum) throws Exception;
	
	public NoticeDTO getNotice(int notice_postnum) throws Exception;
	
	public void notice_update(NoticeDTO notice) throws Exception;
	
	public void notice_change_show(int notice_postnum) throws Exception;
	
	public List<ItemDTO> getMainItemLike(String item_one_day) throws Exception;
	
	public List<ItemDTO> getMainItemNew(String item_one_day) throws Exception;
	
	public List<ItemDTO> getMyHeartList(String member_id) throws Exception;
	
	public void regInquiry(InquiryDTO inquiry) throws Exception;
	
	public List<InquiryDTO> getMyInquiryList(String member_id) throws Exception;
	
	public InquiryDTO getInquiry(int inquiry_postnum) throws Exception;
	
	public void delItem(ItemDTO item) throws Exception;
	
	public ItemDTO itemInfo_modify(int item_code) throws Exception;
}
