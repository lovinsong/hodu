package com.hodu.model;

import java.sql.Blob;
import java.util.Date;

import lombok.Data;


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
	private Blob item_thumbnailimg;
	private Blob item_contentimg;
	private String item_show;

	
}
