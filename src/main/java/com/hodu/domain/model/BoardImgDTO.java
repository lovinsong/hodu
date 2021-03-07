package com.hodu.domain.model;

import java.util.Date;

import lombok.Data;

@Data
public class BoardImgDTO {
	
	private Integer board_img_postnum;
	private String member_id;
	private String board_name;
	private Integer board_postnum;
	private String bimg_org_name;
	private String bimg_new_name;
	private long bimg_size;
	private Date bimg_date;
}
