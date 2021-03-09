package com.hodu.domain.board.service;


import java.util.List;

import com.hodu.domain.model.ItemDTO;

public interface BoardService {
	
	// itemboard 글 작성 서비스
	public String itemRegist(ItemDTO item) throws Exception;
	
	public List<ItemDTO> itempage(int pagenum) throws Exception;
	
	public int getItemCnt() throws Exception;
	
	public ItemDTO itemInfo(int item_code) throws Exception;
}
