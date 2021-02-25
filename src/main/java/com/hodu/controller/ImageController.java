package com.hodu.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
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
	ImageService imageService;

	// 업로드 페이지로 이동하기
	@GetMapping("upload")
	public void upload(Model model) {
	}
	
	@GetMapping("checkImg")
	public void checkImg(Model model) {
	}

	
	@RequestMapping(value = "image/fileupload", method = RequestMethod.POST)
    public void fileupload(Model model, @RequestParam("file") MultipartFile file) {
		
		BoardImageDTO bidto = new BoardImageDTO();
		
		System.out.println(file);
		
		String filename = file.getOriginalFilename();		
		String path = req.getSession().getServletContext().getRealPath("/");
		
		
		System.out.println("path" );
		
		bidto.setBimg_org_name(file.getOriginalFilename());
		bidto.setImg_size(file.getSize());
		bidto.setBimg_new_name("(new)"+filename);
		
		String RESOURCE_PATH = servletContext.getRealPath("/resources/image");

		System.out.println("리소스 패스" + RESOURCE_PATH);
		
		imageService.updateImage(bidto);
		System.out.println("서블렛 패스" + req.getServletPath());
		
		System.out.println("경로" + path);
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
		System.out.println(images);
		
		String p = req.getScheme() +"://"+ req.getServerName() +":" + req.getServerPort() + "/project/resources/image/" + images.get(1).getBimg_org_name();
		
		model.addAttribute("p", p );
		
//		for(BoardImageDTO imgdto : images) {
//			String p = req.getSession().getServletContext().getRealPath("/") +imgdto.getBimg_org_name();
//			model.addAttribute("p", p );
//		}
		
		
	}
	
}

