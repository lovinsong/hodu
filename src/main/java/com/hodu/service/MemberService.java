package com.hodu.service;

import com.hodu.model.MemberDTO;

public interface MemberService {

	/* 회원가입 */
	public void createMember(MemberDTO mem) throws Exception;

	public int userIdCheck(String member_id);

	/* 로그인 */
	public MemberDTO memberLogin(MemberDTO member) throws Exception;

}
