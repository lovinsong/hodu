package com.hodu.util;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.hodu.model.ImageDTO;

import org.springframework.stereotype.Component;

@Component("fileUtils")
public class FileUtils {
	
	@Autowired
	static
	HttpServletRequest req;
	
	private static final String filePath = req.getSession().getServletContext().getRealPath("/") + "upload"; // 파일이 저장될 위치
	
	public List<Map<String, Object>> parseInsertFileInfo(ImageDTO dto, MultipartHttpServletRequest mpRequest) throws Exception{
	
	/*
		Iterator은 데이터들의 집합체? 에서 컬렉션으로부터 정보를 얻어올 수 있는 인터페이스입니다.
		List나 배열은 순차적으로 데이터의 접근이 가능하지만, Map등의 클래스들은 순차적으로 접근할 수가 없습니다.
		Iterator을 이용하여 Map에 있는 데이터들을 while문을 이용하여 순차적으로 접근합니다.
	*/
	Iterator<String> iterator = mpRequest.getFileNames();
	
	MultipartFile multipartFile = null;
	String originalFileName = null;
	String originalFileExtension = null;
	String storedFileName = null;
	
	List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
	Map<String, Object> listMap = null;

	
	return null;
	
	
	
	
	
	
	
	
	
	
	
	
	
	}
	
}
