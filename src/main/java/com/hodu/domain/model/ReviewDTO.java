package com.hodu.domain.model;

import java.sql.Blob;
import java.util.Date;

import lombok.Data;

@Data
public class ReviewDTO {
	
	private Integer review_postnum;
	private String member_id;
	private Integer item_code;
	private String review_content;
	private Integer review_star;
	private Date review_regist_date;
	private Date review_modify_date;
	private String review_show;
}
