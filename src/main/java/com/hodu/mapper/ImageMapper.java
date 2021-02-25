package com.hodu.mapper;

import java.util.List;

import com.hodu.model.BoardImageDTO;

public interface ImageMapper {
	
	public int updateImage(BoardImageDTO biDTO);
	
	public List<BoardImageDTO> getImageName(BoardImageDTO biDTO);
	
}
