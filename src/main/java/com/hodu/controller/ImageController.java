package com.hodu.controller;

import java.io.File;
import java.io.IOException;
<<<<<<< HEAD
=======
import java.util.List;
>>>>>>> branch 'Yoo' of https://github.com/lovinsong/hodu

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
<<<<<<< HEAD
=======
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;

import com.hodu.model.ImageDTO;
import com.hodu.model.NoticeDTO;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
>>>>>>> branch 'Yoo' of https://github.com/lovinsong/hodu

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/image/*")

@Log4j
public class ImageController {


	// 업로드 페이지로 이동하기
	@GetMapping("upload")
	public void upload(Model model) {

	}
<<<<<<< HEAD

	@Autowired
	HttpServletRequest req;
=======
>>>>>>> branch 'Yoo' of https://github.com/lovinsong/hodu
	
<<<<<<< HEAD
	// 내 컴퓨터에 새로운 경로로 저장하기
=======
	@Autowired
	HttpServletRequest req;

	
>>>>>>> branch 'Yoo' of https://github.com/lovinsong/hodu
	@RequestMapping(value = "image/fileupload", method = RequestMethod.POST)
<<<<<<< HEAD
    public void fileupload(Model model, @RequestParam("file") MultipartFile file) {
=======
	public void fileupload(Model model, @RequestParam("file") MultipartFile file) {
		System.out.println(file);
>>>>>>> branch 'Yoo' of https://github.com/lovinsong/hodu
		
<<<<<<< HEAD
        System.out.println(file);
        String filename = file.getOriginalFilename();
        
        File f1 = new File("C:\\HODU\\" + filename);
        
        try {
            file.transferTo(f1);
        } catch (IllegalStateException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
=======
		String filename = file.getOriginalFilename();
		
		String path = req.getSession().getServletContext().getRealPath("/") + "upload";



		System.out.println("경로" + path);
		System.out.println("파일 이름" + file.getOriginalFilename());
		System.out.println("Get Name" + file.getName());
		
		System.out.println(file);
		
		File f1 = new File(path + "\\" + filename);
		try {
			file.transferTo(f1);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	

	}
	
	
}
>>>>>>> branch 'Yoo' of https://github.com/lovinsong/hodu
