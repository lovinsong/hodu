package com.hodu.service.image;

import java.util.List;

import com.hodu.model.BoardImageDTO;

public interface ImageService {
	
	public int updateImage(BoardImageDTO biDTO);	
	public List<BoardImageDTO> getImageName(BoardImageDTO biDTO);

}
