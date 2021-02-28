package com.hodu.domain.model;

import java.util.Date;

import lombok.Data;

@Data
public class MyListDTO {

	private Integer list_postnum;
	private String member_id;
	private String item_code;
	private Integer list_count;
	private Date list_date;
	
}
