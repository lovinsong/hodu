package com.hodu.mapper;

import java.util.ArrayList;
import java.util.List;

import com.hodu.model.NoticeDTO;

public interface NoticeMapper {

	public List<NoticeDTO> getNotice(); 
	
	public NoticeDTO getOneNotice(int number); 
	
}
