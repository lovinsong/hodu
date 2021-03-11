package com.hodu.domain.board.mapper;

import java.util.List;

import com.hodu.domain.model.BoardImgDTO;
import com.hodu.domain.model.ItemDTO;
import com.hodu.domain.model.ItemSelectDTO;
import com.hodu.domain.model.MainItemDTO;
import com.hodu.domain.model.NoticeDTO;
import com.hodu.domain.model.ReviewDTO;
import com.hodu.domain.model.SearchDTO;

public interface BoardMapper {
	
	// itemboard 게시글 작성
	public Integer regItemboard(ItemDTO item);
	//
	
	// board_image 이미지 정보 추가
	public Integer addBoardImg(BoardImgDTO img);
	
	// item_select 추가
	public Integer addItemSelect(ItemSelectDTO itemSelect);
	
	public List<ItemDTO> getItemPage(SearchDTO search);
	
	public String getUserImg(String member_id);
	
	public int getItemCnt(String item_type);
	
	public ItemDTO getItem(int item_code);
	
	public List<BoardImgDTO> getItemBoardImg(int item_code);
	
	public List<ItemSelectDTO> getItemSelect(int item_code);
	
	public String getLikeState(ItemDTO item);

	public int makeLike(ItemDTO item);
	
	public int likeChange(ItemDTO item);
	
	public int boardLikeCount(ItemDTO item);
	
	public int noticeBoardReg(NoticeDTO notice);
	
	public int updateNotice(NoticeDTO notice);
	
	public int noticeChangeShow(int notice_postnum);
	
	public List<NoticeDTO> getNoticePage(int pagenum);
	
	public NoticeDTO getNotice(int notice_postnum);
	
	public List<ReviewDTO> getReviews(int item_code);
	
	public List<ItemDTO> getMainItemLike(String item_one_day);
	
	public List<ItemDTO> getMainItemNew(String item_one_day);

}
