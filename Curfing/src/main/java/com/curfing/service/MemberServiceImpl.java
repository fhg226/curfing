package com.curfing.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.curfing.mapper.MemberMapper;
import com.curfing.vo.BusinessVO;
import com.curfing.vo.MemberVO;



@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberMapper membermapper;

	//일반회원
	@Override
	public void memberJoin(MemberVO member) throws Exception {

		membermapper.memberJoin(member);

	}
	//사업자
	@Override
	public void businessJoin(BusinessVO business) throws Exception {
		
			membermapper.businessJoin(business);
	}
		
	//아이디체크
	@Override
	public int idCheck(String userid) throws Exception {
	
		return membermapper.idCheck(userid);
	}
	
	//일반회원 로그인
	@Override
	public MemberVO memberLogin(MemberVO member) throws Exception {
		
		return membermapper.memberLogin(member);
	}
	
	//사업자 로그인
	@Override
	public BusinessVO businessLogin(BusinessVO business) throws Exception {

		return membermapper.BusinessLogin(business);
	}


}