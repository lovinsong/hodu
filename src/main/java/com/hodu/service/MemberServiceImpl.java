package com.hodu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hodu.mapper.MemberMapper;
import com.hodu.model.MemberDTO;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper member_mapper;

	// 회원가입
	@Override
	public void createMember(MemberDTO member) throws Exception {

		member_mapper.addMember(member);
	}

	// 로그인
	@Override
	public MemberDTO memberLogin(MemberDTO member) throws Exception {
		return member_mapper.memberLogin(member);
	}

	// 아이디 체크
	@Override
	public int idCheck(String member_id) throws Exception {
		return member_mapper.idCheck(member_id);
	}

	// 닉네임 체크
	@Override
	public int nickCheck(String member_nickname) throws Exception {
		return member_mapper.nickCheck(member_nickname);
	}
	// 수정시 닉네임 체크
	@Override
	public String updateNickCheck(String member_id) throws Exception {
		return member_mapper.updateNickCheck(member_id);
	}
	// 폰 체크
	@Override
	public int phoneCheck(String member_phone) throws Exception {
		return member_mapper.phoneCheck(member_phone);
	}

	// 이메일 체크
	@Override
	public int emailCheck(String member_email) throws Exception {
		return member_mapper.emailCheck(member_email);
	}

	//한명 정보 불러오기
	@Override
	public MemberDTO memberInfo(String member_id) throws Exception {
		return member_mapper.memberInfo(member_id);
	}
	
	//회원정보 수정
	@Override
	public void updateMember(MemberDTO member) throws Exception {
		member_mapper.updateMember(member);
	}

	

}
