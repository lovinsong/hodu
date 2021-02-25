package com.hodu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hodu.mapper.MemberMapper;
import com.hodu.model.MemberDTO;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberMapper mem_mapper;
	
	@Override
	public int createMember(MemberDTO mem) {
		return mem_mapper.addMember(mem);
	}

	@Override
	public int idCheck(String member_id) throws Exception{
		return mem_mapper.idCheck(member_id);
	}

	@Override
	public int nickCheck(String member_nickname) throws Exception {
		return mem_mapper.nickCheck(member_nickname);
	}

	@Override
	public int phoneCheck(String member_phone) throws Exception {
		return mem_mapper.phoneCheck(member_phone);
	}

	@Override
	public int emailCheck(String member_email) throws Exception {
		return mem_mapper.emailCheck(member_email);
	}

}
