package com.hodu.domain.board.mapper;

import java.util.List;

import com.hodu.domain.model.BoardImgDTO;
import com.hodu.domain.model.ItemDTO;
import com.hodu.domain.model.ItemSelectDTO;
import com.hodu.domain.model.NoticeDTO;
import com.hodu.domain.model.ReviewDTO;

public interface BoardMapper {
	
	// itemboard 게시글 작성
	public Integer regItemboard(ItemDTO item);
	//
	
	// board_image 이미지 정보 추가
	public Integer addBoardImg(BoardImgDTO img);
	
	// item_select 추가
	public Integer addItemSelect(ItemSelectDTO itemSelect);
	
	public List<ItemDTO> getItemPage(int pagenum);
	
	public String getUserImg(String member_id);
	
	public int getItemCnt();
	
	public ItemDTO getItem(int item_code);
	
	public List<BoardImgDTO> getItemBoardImg(int item_code);
	
	public List<ItemSelectDTO> getItemSelect(int item_code);
	
	public String getLikeState(ItemDTO item);

	public int makeLike(ItemDTO item);
	
	public int likeChange(ItemDTO item);
	
	public int boardLikeCount(ItemDTO item);
	
	public int noticeBoardReg(NoticeDTO notice);
	
	public List<NoticeDTO> getNoticePage(int pagenum);
	
	public NoticeDTO getNotice(int notice_postnum);
	
	public List<ReviewDTO> getReviews(int item_code);

}
