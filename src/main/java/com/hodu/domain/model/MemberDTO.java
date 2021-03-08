package com.hodu.domain.model;


import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class MemberDTO {

	private String member_id;
	private String level_mentee;
	private String level_mentor;
	private String member_nickname;
	private String member_pw;
	private String member_name;
	private String member_img;
	private String member_phone;
	private String member_address;
	private String member_email;
	private Integer member_cash;
	private Date member_regdate;
	private String hodu_manager;
	private Integer member_postcode;
	private String member_detailaddress;
	private String mentor_enable;
	

	// 실제 업로드한 이미지 정보가 들어가는 변수
	private MultipartFile member_imgM;
}
