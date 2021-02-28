package com.hodu.domain.account.mapper;

import com.hodu.domain.model.MemberDTO;

public interface MemberMapper {

	// 회원가입
	public int addMember(MemberDTO member);
	
    // 로그인
    public MemberDTO memberLogin(MemberDTO member);

    // 아이디 체크
	public int idCheck(String member_id);
	
	// 닉네임 체크
	public int nickCheck(String member_nickname);
	// 수정시 닉네임 체크
	public String updateNickCheck(String member_id);
	
	// 폰 체크
	public int phoneCheck(String member_phone);
	
	// 이메일 체크
	public int emailCheck(String member_email);
	
	//한명 정보 받기
	public MemberDTO memberInfo(String member_id);
	
	//회원 정보 수정
	public void updateMember(MemberDTO member);
}
