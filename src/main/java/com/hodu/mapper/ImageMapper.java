package com.hodu.mapper;

import java.util.List;

import com.hodu.model.BoardImageDTO;

public interface ImageMapper {
	
	//이미지 등록
	public int updateImage(BoardImageDTO biDTO);
	
	//이미지 이름 가져오기
	public List<BoardImageDTO> getImageName(BoardImageDTO biDTO);
	
}
