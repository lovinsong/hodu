package com.hodu.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/image/*")

@Log4j
public class ImageController {


	// 업로드 페이지로 이동하기
	@GetMapping("upload")
	public void upload(Model model) {

	}


	@Autowired
	HttpServletRequest req;
	
	
	@RequestMapping(value = "image/fileupload", method = RequestMethod.POST)
    public void fileupload(Model model, @RequestParam("file") MultipartFile file) {

		System.out.println(file);
		
		String filename = file.getOriginalFilename();		
		String path = req.getSession().getServletContext().getRealPath("/") + "upload";

		System.out.println("경로" + path);
		System.out.println("파일 이름" + file.getOriginalFilename());
		System.out.println("Get Name" + file.getName());		
		
		File f1 = new File(path + "\\" + filename);
		
		try {
			file.transferTo(f1);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}	
}

