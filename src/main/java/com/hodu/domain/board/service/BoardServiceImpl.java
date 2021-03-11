package com.hodu.domain.board.service;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.hodu.domain.board.mapper.BoardMapper;
import com.hodu.domain.model.BoardImgDTO;
import com.hodu.domain.model.InquiryDTO;
import com.hodu.domain.model.ItemDTO;
import com.hodu.domain.model.ItemSelectDTO;
import com.hodu.domain.model.MainItemDTO;
import com.hodu.domain.model.MyHeartDTO;
import com.hodu.domain.model.NoticeDTO;
import com.hodu.domain.model.SearchDTO;
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
	public List<ItemDTO> itempage(SearchDTO search) throws Exception {
		
		List<ItemDTO> itempageinfo = board_mapper.getItemPage(search);
		
		for (ItemDTO item : itempageinfo) {
			
			item.setMember_img(board_mapper.getUserImg(item.getMember_id()));
			item.setMember_nickname(board_mapper.getUserNickname(item.getMember_id()));
		}
		
		return itempageinfo;
	}

	@Override
	public int getItemCnt(String item_type) throws Exception {
		
		return board_mapper.getItemCnt(item_type);
	}

	@Override
	public ItemDTO itemInfo(int item_code, String user) throws Exception {

		List<String> images = new ArrayList();
		
		for (BoardImgDTO image : board_mapper.getItemBoardImg(item_code)) {
			images.add(image.getBimg_new_name());
		}
		
		
		
		ItemDTO item = board_mapper.getItem(item_code);
		item.setMember_img(board_mapper.getUserImg(item.getMember_id()));
		item.setImages(images);
		item.setSelect(board_mapper.getItemSelect(item_code));
		item.setUser(user);
		item.setLikeStatue(board_mapper.getLikeState(item));
		item.setReview(board_mapper.getReviews(item_code));
		item.setMember_nickname(board_mapper.getUserNickname(item.getMember_id()));
		
		return item;
		
	}

	@Override
	public void likeChanger(ItemDTO item) throws Exception {
		
		System.out.println("changer : " + item);
		
		if (item.getLikeStatue().isEmpty()) {
			board_mapper.makeLike(item);
			item.setNum(1);
			board_mapper.boardLikeCount(item);
		} else if (item.getLikeStatue().equals("Y")) {
			item.setNum(-1);
			board_mapper.boardLikeCount(item);
			item.setLikeStatue("N");
			board_mapper.likeChange(item);
		} else {
			item.setNum(1);
			board_mapper.boardLikeCount(item);
			item.setLikeStatue("Y");
			board_mapper.likeChange(item);
		}
		
	}

	@Override
	public void notice_regist(NoticeDTO notice) throws Exception {
		
		board_mapper.noticeBoardReg(notice);
		
	}

	@Override
	public List<NoticeDTO> noticepage(int pagenum) throws Exception {
		List<NoticeDTO> noticepageinfo = board_mapper.getNoticePage(pagenum);
		
		return noticepageinfo;
	}

	@Override
	public NoticeDTO getNotice(int notice_postnum) throws Exception {


		return board_mapper.getNotice(notice_postnum);
	}

	@Override
	public void notice_update(NoticeDTO notice) throws Exception {
		board_mapper.updateNotice(notice);
		
	}

	@Override
	public void notice_change_show(int notice_postnum) throws Exception {
		board_mapper.noticeChangeShow(notice_postnum);
		
	}


	@Override
	public List<ItemDTO> getMainItemLike(String item_one_day) throws Exception {
		
		return board_mapper.getMainItemLike(item_one_day);
	}

	@Override
	public List<ItemDTO> getMainItemNew(String item_one_day) throws Exception {

		return board_mapper.getMainItemNew(item_one_day);
	}

	@Override
	public List<ItemDTO> getMyHeartList(String member_id) throws Exception {
		
		List<MyHeartDTO> myHeartInfo = board_mapper.getMyHeartInfo(member_id);
		List<ItemDTO> myHeartList = new ArrayList();
		
		for (MyHeartDTO heart : myHeartInfo) {
			myHeartList.add(board_mapper.getItem(heart.getItem_code()));
		}
		
		return myHeartList;
	}

	@Override
	public void regInquiry(InquiryDTO inquiry) throws Exception {
		inquiry.setInquiry_img((Upload.uploadIMG(inquiry.getInquiry_imgs(), "C:\\Users\\Public\\upload\\Inquiry\\")));
		
		board_mapper.regInquiry(inquiry);
		
	}

	@Override
	public List<InquiryDTO> getMyInquiryList(String member_id) throws Exception {
		
		return board_mapper.inquiryList(member_id);
	}

	@Override
	public InquiryDTO getInquiry(int inquiry_postnum) throws Exception {
		
		return board_mapper.getInquiry(inquiry_postnum);
	}
	

}
