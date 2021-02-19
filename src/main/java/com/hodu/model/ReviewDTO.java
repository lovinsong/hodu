package com.hodu.model;

import java.sql.Blob;
import java.util.Date;

import lombok.Data;

@Data
public class ReviewDTO {
	
	private Integer review_postnum;
	private String member_id;
	private String item_code;
	private String review_title;
	private String review_content;
	private Integer review_star;
	private Blob review_img;
	private Integer review_like;
	private Date review_date;
	private Integer review_views;
	private String review_secret;
	private String review_show;
}
