package com.hodu.domain.model;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ItemDTO {

	
	// 실제 게시글 DB에 들어갈 변수들
	private Integer item_code;
	private String member_id;
	private String item_category;
	private String item_title;
	private Integer item_price;
	private String item_place;
	private String item_content_who;
	private String item_content_what;
	private String item_content_target;
	private String item_content_how;
	private Date item_modifydate;
	private Date item_reg_date;
	private String item_thumbnailimg;
	private String item_show;
	private Integer item_like;
	private long item_review_star;
	private String item_one_day;
	private Integer item_NOP;
	
	
	
	// 게시글에서 받아올 주소 정보
	private String postcode;
	private String address;
	private String detail_add;
	
	// 게시글 일정 정보
	private String day1;
	private String day2;
	private String day3;
	private String day4;
	private String day5;
	
	// 게시글에서 받아 이미지 정보
	private MultipartFile[] b_img;
	private MultipartFile item_thumbnailimgA;
	
	private String member_img;
	private List<String> images;
	
	// ItemSelect에서 받아올 시간 정보
	
	private List<ItemSelectDTO> select;
	

}
