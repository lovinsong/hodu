package com.hodu.domain.model;

import java.util.Date;

import lombok.Data;

@Data
public class MyHeartDTO {
	
	private Integer heart_postnum;
	private String member_id;
	private	Integer item_code;
	private Date heart_date;
	private String heart_show;
}
