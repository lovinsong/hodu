package com.hodu.mapper;

import com.hodu.model.MemberDTO;

public interface MemberMapper {

	/* 회원가입 */
	public int addMember(MemberDTO member);

	public int searchMemberId(String member_id);
	
    /* 로그인 */
    public MemberDTO memberLogin(MemberDTO member);


	
}
