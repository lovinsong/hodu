package com.hodu.domain.board.service;


import com.hodu.domain.model.ItemDTO;

public interface BoardService {
	
	// itemboard 글 작성 서비스
	public String itemRegist(ItemDTO item) throws Exception;

}
