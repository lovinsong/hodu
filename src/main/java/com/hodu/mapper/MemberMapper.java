package com.hodu.mapper;

import com.hodu.model.MemberDTO;

public interface MemberMapper {

	public int addMember(MemberDTO mem);

	public int idCheck(String member_id);
	
	public int nickCheck(String member_nickname);
	
	public int phoneCheck(String member_phone);
	
	public int emailCheck(String member_email);
}
