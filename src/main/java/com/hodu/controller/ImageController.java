package com.hodu.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.jdbc.datasource.AbstractDriverBasedDataSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.hodu.model.BoardImageDTO;
import com.hodu.service.image.ImageService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/image/*")
@Log4j
public class ImageController {
	
	@Autowired 
    ServletContext servletContext;
	
	@Autowired
	HttpServletRequest req;
	
	@Autowired
	ResourceLoader resourceLoader; 

	
	@Autowired
	ImageService imageService;

	// 업로드 페이지로 이동하기
	@GetMapping("upload")
	public void upload(Model model) {
	}
	
	@GetMapping("checkImg")
	public void checkImg(Model model) {
	}

	
	@RequestMapping(value = "image/fileupload", method = RequestMethod.POST)
    public void fileupload(Model model, @RequestParam("file") MultipartFile file) throws IOException {
		
		BoardImageDTO bidto = new BoardImageDTO();
		
		String filename = file.getOriginalFilename();		
		
		
		bidto.setBimg_org_name(file.getOriginalFilename());
		bidto.setImg_size(file.getSize());
		bidto.setBimg_new_name("(new)"+filename);
		
		String RESOURCE_PATH = "C:\\Users\\Public\\upload";

		
		imageService.updateImage(bidto);
		
		System.out.println("경로" + RESOURCE_PATH);
		System.out.println("파일 이름" + file.getOriginalFilename());
		System.out.println("Get Name" + file.getName());		
		
		File f1 = new File(RESOURCE_PATH + "\\" + filename);
		
		
		try {
			file.transferTo(f1);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}	
	
	@RequestMapping(value = "image/realImg", method = RequestMethod.POST)
	public void realImg(Model model, BoardImageDTO dto) {
		List<BoardImageDTO> images = imageService.getImageName(dto);
		List<String> image_names = new ArrayList();
		
		for(BoardImageDTO imgdto : images) {
			String name = "/project/upload/" +imgdto.getBimg_org_name();
			
			image_names.add(name);
			
		}
		
		model.addAttribute("image_names",image_names);
		
		
	}
	
}

