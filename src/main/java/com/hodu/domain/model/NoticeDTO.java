package com.hodu.domain.model;

import java.util.Date;

import lombok.Data;

@Data
public class NoticeDTO {
	
	private Integer notice_postnum;
	private String member_id;
	private String notice_title;
	private String notice_content;
	private Date notice_regist_date;
	private Date notice_modify_date;
	private String notice_show;



}
