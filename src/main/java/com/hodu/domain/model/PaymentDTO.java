package com.hodu.domain.model;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class PaymentDTO {

	//Member
	private String member_id;
	private String member_name;
	private String member_phone;
	private String member_nickname;
	private String member_email;
	private Integer member_cash;
	
	//Item_Select
	private String sel_postnum; // 아이템
	private String item_people; //멘토의 최대 인원수
	
	//Item_Board
	private Integer item_code;
	private Integer item_price;
	private String item_category;
	private MultipartFile[] b_img;
	private MultipartFile item_thumbnailimgA;
	private String member_img;
	
	//only payment
	private String apply_people; // 신청 수 
	private Integer order_num; //주문 번호
	private Date order_day;	// 주문 일
	
	
}
