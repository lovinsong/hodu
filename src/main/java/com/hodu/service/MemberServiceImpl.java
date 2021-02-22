package com.hodu.service;

import org.springframework.stereotype.Service;

import com.hodu.mapper.MemberMapper;
import com.hodu.model.MemberDTO;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService{
	
	private MemberMapper mem_mapper;
	
	@Override
	public int createMember(MemberDTO mem) {
		return mem_mapper.addMember(mem);
	}

}
