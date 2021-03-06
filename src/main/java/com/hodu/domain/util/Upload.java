package com.hodu.domain.util;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

// 업로드 기능 유틸
public class Upload {
	
	// 이미지 정보와 경로를 입력하면 해당 경로에 이미지가 업로드되고 저장되는 파일명을 반환함
	public static String uploadIMG(MultipartFile img, String path) {
		
		// 난수와 원본이름을 합쳐 저장할 이름을 결정
		String storedImgName = UUID.randomUUID().toString() + img.getOriginalFilename();
		
		File f1 = new File(path + "\\" + storedImgName);
		
		
		try {
			img.transferTo(f1);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		return storedImgName;
	}
	
	// 이미지들의 정보와 경로를 입력하면 해당 경로에 이미지가 업로드되고 저장되는 파일명을 반환함
	public static String[] uploadIMGS(MultipartFile[] imgs, String path) {
		String[] storedImgNames = new String[imgs.length];
		int i = 0;
		for (MultipartFile img : imgs) {
			
			// 난수와 원본이름을 합쳐 저장할 이름을 결정
			String storedImgName = UUID.randomUUID().toString() + img.getOriginalFilename();
			storedImgNames[i++] = storedImgName;
			
			File f1 = new File(path + "\\" + storedImgName);
			
			
			try {
				img.transferTo(f1);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		
		}
		return storedImgNames;
	}
}
