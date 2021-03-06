package com.hodu.domain.account.mapper;

import java.util.List;

import com.hodu.domain.model.ItemDTO;
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

	// 한명 정보 받기
	public MemberDTO memberInfo(String member_id);

	// 회원 정보 수정
	public void updateMember(MemberDTO member);

	// 폰 체크
	public String pwCheck(String member_id);

	// 회원탈퇴
	public void deleteMember(String member_id);

	// 아이디 찾기
	public MemberDTO findid(MemberDTO member);

	// 비밀번호 찾기 임시
	public MemberDTO findpw(MemberDTO member);

	// 아이디와 맞는 이메일인지 찾기
	public String availableEmailCheck(String member_id);

	// 회원 정보 수정
	public void updatePw(MemberDTO member);
	
	// 멘토 등록
	public void mentorReg(MemberDTO member);
	
	//프로필 사진 변경
	public void changePImg(MemberDTO member);
	
	//호두충전금액
	public void chargehodu(MemberDTO member);
	
	//회원정보 불러오기
	public List<MemberDTO> memberList();
}
