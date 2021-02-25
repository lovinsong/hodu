package com.hodu.model;

import java.util.Date;

import lombok.Data;

@Data
public class MemberImageDTO {
	
    private Integer member_img_postnum;
    private String member_id;
    private String mimg_org_name;
    private String mimg_new_name;
    private Date mimg_date;
    private Integer mimg_size;

}
