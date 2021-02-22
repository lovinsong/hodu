package com.hodu.model;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class ReplyDTO {
	
	private Integer notice_reply_postnum;
	private Integer notice_postnum;
	private String member_id;
	private String notice_reply_content;
	private Date notice_reply_date;
	private Date notice_reply_modifydate;
	private String notice_reply_show;

}
