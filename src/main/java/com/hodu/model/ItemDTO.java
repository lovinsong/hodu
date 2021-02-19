package com.hodu.model;

import java.util.Date;

import lombok.Data;
import oracle.sql.BLOB;

@Data
public class ItemDTO {

	private String item_code;
	private String member_id;
	private String item_category;
	private String item_title;
	private String item_content;
	private Integer item_price;
	private String item_type;
	private String item_time;
	private String item_place;
	private Integer item_views;
	private Date item_date;
	private BLOB item_thumbnailimg;
	private BLOB item_contentimg;
	private String item_show;

	
}
