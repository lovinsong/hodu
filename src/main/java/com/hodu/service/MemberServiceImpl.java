package com.hodu.service;

import org.springframework.stereotype.Service;

import com.hodu.mapper.MemberMapper;
import com.hodu.model.MemberDTO;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService{
	
	private MemberMapper member_mapper;
	
	//회원가입
	@Override
	public void createMember(MemberDTO member) throws Exception{
		
		member_mapper.addMember(member);
	}

	@Override
	public int userIdCheck(String member_id) {
		return member_mapper.searchMemberId(member_id);
	}

	//로그인
	@Override
	public MemberDTO memberLogin(MemberDTO member) throws Exception {
		
		return member_mapper.memberLogin(member);
	}

}
