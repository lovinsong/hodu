package com.hodu.service;

import com.hodu.model.MemberDTO;

public interface MemberService {

	public int createMember(MemberDTO mem);

	public int idCheck(String member_id) throws Exception; 
	
	public int nickCheck(String member_nickname) throws Exception; 
	
	public int phoneCheck(String member_phone) throws Exception; 
	
	public int emailCheck(String member_email) throws Exception; 
}
