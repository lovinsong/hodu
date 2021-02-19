package com.hodu.model;

import java.util.Date;

import lombok.Data;

@Data
public class ItemSelectDTO {

	private Integer sel_postnum;
	private String item_code;
	private Date item_select_date;
	private Integer item_people;
	
}
