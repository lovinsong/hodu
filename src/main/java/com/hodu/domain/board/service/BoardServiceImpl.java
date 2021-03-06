package com.hodu.domain.board.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.hodu.domain.board.mapper.BoardMapper;
import com.hodu.domain.model.ItemDTO;
import com.hodu.domain.util.Upload;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardMapper board_mapper;
	
	@Override
	public String itemRegist(ItemDTO item) throws Exception {
		
		
		item.setItem_thumbnailimg(Upload.uploadIMG(item.getItem_thumbnailimgA(), "C:\\Users\\Public\\upload\\Thumbnail\\"));
		if (item.getDay2().isEmpty()) {
			item.setItem_one_day("Y");
		} else {
			item.setItem_one_day("N");
		}
		
		System.out.println("item : " + item);
		
		return null;
	}

}
