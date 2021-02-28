package com.hodu.domain.model;

import java.util.Date;

import lombok.Data;

@Data
public class MyOrderDTO {
	
	private String order_number;
	private String member_id;
	private String item_code;
	private String member_name;
	private String member_phone;
	private String member_email;
	private Integer order_count;
	private Date order_date;
	private String order_show;
}
