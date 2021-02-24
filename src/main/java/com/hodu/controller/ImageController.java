package com.hodu.controller;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartRequest;

import com.hodu.model.ImageDTO;
import com.hodu.model.NoticeDTO;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/image/*")
@Log4j
public class ImageController extends HttpServlet {

	//업로드
	@GetMapping("upload")
	public void upload(Model model) {
		
	}

	@Autowired
	ServletContext context;
	
	 
	public void setServletContext(ServletContext servletContext) {
	    this.context = servletContext;
	}

	
	@RequestMapping(value = "image/fileupload", method = RequestMethod.POST)
	public void fileupload(Model model, ImageDTO dto) {
		
		System.out.println("member_id: " + dto.getMember_id());		
		System.out.println("img_name: " + dto.getImg_name());
		
		int maxSize = 3*1024*1024; // 3MB
		String encoding = "euc-kr"; // 한글을 받기 위해 euc-kr로 설정한다.

		ServletContext context = getServletContext(); //어플리케이션에 대한 정보를 ServletContext 객체가 갖게 됨. 
		String saveDir = context.getRealPath("Upload"); //절대경로를 가져옴
		System.out.println("절대경로 >> " + saveDir);
		
		MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());

	}
	
	
}
