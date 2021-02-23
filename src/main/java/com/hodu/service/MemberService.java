package com.hodu.service;

import com.hodu.model.MemberDTO;

public interface MemberService {

	public int createMember(MemberDTO mem);

	public int userIdCheck(String member_id); 
}
