package com.hodu.mapper;

import java.util.List;

import com.hodu.model.NoticeDTO;

public interface NoticeMapper {

	public List<NoticeDTO> getNotice(); 
	
	public NoticeDTO getOneNotice(int number); 
	
	//글 등록
	public int writeNotice(NoticeDTO nDTO);
	
}
