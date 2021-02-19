package com.hodu.model;

import java.util.Date;

import lombok.Data;
import oracle.sql.BLOB;

@Data
public class MemberDTO {

	private String member_id;
	private String level_mentee;
	private String level_mentor;
	private String member_nickname;
	private String member_pw;
	private String member_name;
	private BLOB member_img;
	private String member_phone;
	private String member_address;
	private String member_email;
	private Integer member_cash;
	private Date member_regdate;
	private String member_enabled;

}
