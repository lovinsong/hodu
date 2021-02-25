package com.hodu.service.image;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hodu.mapper.ImageMapper;
import com.hodu.model.BoardImageDTO;

@Service("ImageService")
public class ImageServiceImpl implements ImageService {
	
	@Autowired
	private ImageMapper imageMapper;
	
	@Override
	public int updateImage(BoardImageDTO biDTO) {
		return imageMapper.updateImage(biDTO);
	}

	@Override
	public List<BoardImageDTO> getImageName(BoardImageDTO biDTO) {
		return imageMapper.getImageName(biDTO);
	}

}
