package com.hodu.model;

import java.sql.Blob;
import java.util.Date;

import lombok.Data;

@Data
public class InquiryDTO {
	private Integer inquiry_postnum;
	private String member_id;
	private String inquiry_group;
	private String inquiry_title;
	private String inquiry_content;
	private Blob inquiry_img;
	private Date inquiry_date;
	private Integer inquiry_views;
	private String inquiry_secret;
	private String inquiry_show;
}
