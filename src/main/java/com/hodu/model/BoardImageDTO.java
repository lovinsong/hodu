package com.hodu.model;

import java.util.Date;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class BoardImageDTO {
	
    private Integer board_img_postnum;
    private String member_id;
    private String board_name;
    private Integer board_postnum;
    private String bimg_org_name;
    private String bimg_new_name;
    private Date bimg_date;
    private Integer img_size;

}