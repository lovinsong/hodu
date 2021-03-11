package com.hodu.domain.board.service;


import java.util.List;

import com.hodu.domain.model.ItemDTO;
import com.hodu.domain.model.NoticeDTO;

public interface BoardService {
	
	// itemboard 글 작성 서비스
	public String itemRegist(ItemDTO item) throws Exception;
	
	public List<ItemDTO> itempage(int pagenum) throws Exception;
	
	public int getItemCnt() throws Exception;
	
	public ItemDTO itemInfo(int item_code, String user) throws Exception;
	
	public void likeChanger(ItemDTO item) throws Exception;
	
	public void notice_regist(NoticeDTO notice) throws Exception;
	
	public List<NoticeDTO> noticepage(int pagenum) throws Exception;
	
	public NoticeDTO getNotice(int notice_postnum) throws Exception;
	
	public void notice_update(NoticeDTO notice) throws Exception;
	
	public void notice_change_show(int notice_postnum) throws Exception;
}
