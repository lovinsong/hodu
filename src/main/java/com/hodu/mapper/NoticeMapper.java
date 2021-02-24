package com.hodu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hodu.model.NoticeDTO;
import com.hodu.model.ReplyDTO;

public interface NoticeMapper {

	public List<NoticeDTO> getNotice(); 
	
	public NoticeDTO getOneNotice(int number); 
	
	//글 등록
	public int writeNotice(NoticeDTO nDTO);
	
	//글 수정
	public int updateNotice(NoticeDTO nDTO);
	
	//글 삭제
	public int deleteNotice(NoticeDTO nDTO);
	
	//답글 등록
	public int writeReply(ReplyDTO rDTO);
	
	//별점 평균 구해서 게시판 테이블에 넣어주기
	public int updateStar(Integer board_postnum);

	//답글 가져오기
	public List<ReplyDTO> getReply(Integer board_postnum);
	
	//답글 갯수 가져오기
	public int replyTotal(Integer board_postnum);
	
	//답글 수정
	public int updateReply(ReplyDTO rDTO);
	
	//답글 삭제
	public int deleteReply(int rno);
	
	//찜(Y/N) 조회
	public String searchHeart(Integer board_postnum);
	
	//찜목록 추가
	public int addHeart(Integer board_postnum);
	
	//찜목록 업데이트
	public int updateHeart(@Param("board_postnum")Integer board_postnum, @Param("show") String show);
	
	
	
}
