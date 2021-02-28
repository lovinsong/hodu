package com.hodu.service;

import com.hodu.model.MemberDTO;

public interface MemberService {

	// 회원가입
	public void createMember(MemberDTO mem) throws Exception;

	// 로그인
	public MemberDTO memberLogin(MemberDTO member) throws Exception;

	// 아이디체크
	public int idCheck(String member_id) throws Exception;

	// 닉체크
	public int nickCheck(String member_nickname) throws Exception;
	// 수정시 닉체크
	public String updateNickCheck(String member_id) throws Exception;

	// 폰체크
	public int phoneCheck(String member_phone) throws Exception;

	// 이메일체크
	public int emailCheck(String member_email) throws Exception;
	
	//한명 정보 불러오는 기능
	public MemberDTO memberInfo(String member_id) throws Exception; 
	
	//회원정보 수정
	public void updateMember(MemberDTO mem) throws Exception;
}
