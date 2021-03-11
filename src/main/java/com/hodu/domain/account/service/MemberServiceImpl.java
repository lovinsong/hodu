package com.hodu.domain.account.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hodu.domain.account.mapper.MemberMapper;
import com.hodu.domain.model.MemberDTO;
import com.hodu.domain.util.Upload;

@Service
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

	// 한명 정보 불러오기
	@Override
	public MemberDTO memberInfo(String member_id) throws Exception {
		return member_mapper.memberInfo(member_id);
	}

	// 회원정보 수정
	@Override
	public void updateMember(MemberDTO member) throws Exception {
		member_mapper.updateMember(member);
	}

	// 패스워드 체크
	@Override
	public String pwCheck(String member_id) throws Exception {
		return member_mapper.pwCheck(member_id);
	}

	// 회원 탈퇴
	@Override
	public void deleteMember(String member_id) throws Exception {
		member_mapper.deleteMember(member_id);

	}

	// 아이디 찾기
	@Override
	public MemberDTO findId(MemberDTO member_id) throws Exception {
		return member_mapper.findid(member_id);
	}

	// 비밀번호 찾기
	@Override
	public MemberDTO findpw(MemberDTO member_pw) throws Exception {
		return member_mapper.findpw(member_pw);
	}

	// 아이디와 맞는 이메일인지 찾기
	@Override
	public String availableEmailCheck(String member_id) throws Exception {
		return member_mapper.availableEmailCheck(member_id);
	}

	// 계정 비밀번호 수정
	@Override
	public void updatePw(MemberDTO member) throws Exception {
		member_mapper.updatePw(member);
	}
	
	//멘토 등록
	@Override
	public void mentorReg(MemberDTO member) throws Exception {
		
		member.setMember_img(Upload.uploadIMG(member.getMember_imgM(), "C:\\Users\\Public\\upload\\member\\"));
		member_mapper.mentorReg(member);
		
	}

	//프로필 사진 변경
	@Override
	public void changePImg(MemberDTO member) throws Exception {
		member.setMember_img(Upload.uploadIMG(member.getMember_imgM(), "C:\\Users\\Public\\upload\\member\\"));
		member_mapper.changePImg(member);
	}

	//호두충전금액
	@Override
	public void chargehodu(MemberDTO member) throws Exception {
		member_mapper.chargehodu(member);
	}

}
