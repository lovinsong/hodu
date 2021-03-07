package com.hodu.domain.board.service;


import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.hodu.domain.board.mapper.BoardMapper;
import com.hodu.domain.model.BoardImgDTO;
import com.hodu.domain.model.ItemDTO;
import com.hodu.domain.model.ItemSelectDTO;
import com.hodu.domain.util.Upload;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardMapper board_mapper;
	
	@Override
	public String itemRegist(ItemDTO item) throws Exception {
		
		BoardImgDTO[] images = new BoardImgDTO[item.getB_img().length];
		String[] days = new String[5];
		ItemSelectDTO itemSelect = new ItemSelectDTO();
		SimpleDateFormat date = new SimpleDateFormat("yyyy/mm/dd/HH:mm");

		item.setItem_thumbnailimg(Upload.uploadIMG(item.getItem_thumbnailimgA(), "C:\\Users\\Public\\upload\\Thumbnail\\"));
		
		// 1회차 다회차 판별 후 주입
		if (item.getDay2().isEmpty()) {
			item.setItem_one_day("Y");
		} else {
			item.setItem_one_day("N");
		}
		
		if (!(item.getDetail_add().isEmpty())) {
			item.setItem_place(item.getPostcode() + item.getAddress() + item.getDetail_add());
		}		
		// 글 등록 -> 하면서 item_code 받아옴
		board_mapper.regItemboard(item);
		
		System.out.println(item);
		images = Upload.uploadIMGS(item.getB_img(), "C:\\Users\\Public\\upload\\images\\", item, "item_board");
		
		for (BoardImgDTO image : images) {
			board_mapper.addBoardImg(image);
		}
		
		
		days[0] = item.getDay1();
		days[1] = item.getDay2();
		days[2] = item.getDay3();
		days[3] = item.getDay4();
		days[4] = item.getDay5();
		
		for (String day : days) {
			if(!day.isEmpty()) {
				itemSelect.setItem_people(item.getItem_NOP());
				itemSelect.setItem_code(item.getItem_code());
				itemSelect.setItem_start_date(date.parse(day.substring(0,16)));
				itemSelect.setItem_end_date(date.parse(day.substring(19,35)));
				
				board_mapper.addItemSelect(itemSelect);
			}
		}
		
		
		
		
		return "ho";
	}

	@Override
	public List<ItemDTO> itempage(int pagenum) throws Exception {
		
		List<ItemDTO> itempageinfo = board_mapper.getItemPage(pagenum);
		
		for (ItemDTO item : itempageinfo) {
			
			item.setMember_img(board_mapper.getUserImg(item.getMember_id()));
		}
		
		return itempageinfo;
	}

	@Override
	public int getItemCnt() throws Exception {
		
		return board_mapper.getItemCnt();
	}

}
