package com.hodu.domain.model;

import java.util.Date;

import lombok.Data;

@Data
public class ItemSelectDTO {

	private Integer sel_postnum;
	private Integer item_code;
	private Integer item_people;
	private Date item_start_date;
	private Date item_end_date;
	
}
