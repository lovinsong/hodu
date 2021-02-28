package com.hodu.domain.model;

import java.util.Date;

import lombok.Data;

@Data
public class QuestionDTO {
	
	private Integer question_postnum;
	private String member_id;
	private String item_code;
	private String question_title;
	private String question_content;
	private Date question_date;
	private Integer question_views;
	private String question_secret;
	private String question_show;

}
