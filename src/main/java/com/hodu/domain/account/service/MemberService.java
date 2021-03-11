package com.hodu.domain.account.service;

import com.hodu.domain.model.MemberDTO;

public interface MemberService {

	// 회원가입
	public void createMember(MemberDTO member) throws Exception;

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

	// 한명 정보 불러오는 기능
	public MemberDTO memberInfo(String member_id) throws Exception;

	// 회원정보 수정
	public void updateMember(MemberDTO member) throws Exception;

	// 비밀번호 체크
	public String pwCheck(String member_id) throws Exception;

	// 회원 탈퇴
	public void deleteMember(String member_id) throws Exception;

	// 아이디 찾기
	public MemberDTO findId(MemberDTO member_id) throws Exception;

	// 비밀번호 찾기
	public MemberDTO findpw(MemberDTO member_id) throws Exception;

	// 아이디와 맞는 이메일인지 찾기
	public String availableEmailCheck(String member_id) throws Exception;

	// 계정 비밀번호 수정
	public void updatePw(MemberDTO member) throws Exception;
	
	//멘토 등록
	public void mentorReg(MemberDTO member) throws Exception;
	
	//프로필 사진 수정
	public void changePImg(MemberDTO member) throws Exception;
	
	//호두충전금액
	public void chargehodu(MemberDTO member) throws Exception;

}
