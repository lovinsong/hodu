package com.hodu.domain.model;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import java.sql.Blob;

import lombok.Data;

@Data
public class InquiryDTO {
	private Integer inquiry_postnum;
	private String member_id;
	private String inquiry_group;
	private String inquiry_title;
	private String inquiry_content;
	private String inquiry_img;
	private Date inquiry_date;
	private Date inquiry_modifydate;
	private String inquiry_show;
	
	
	private MultipartFile inquiry_imgs;
}
