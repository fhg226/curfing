package com.curfing.mapper;

import com.curfing.vo.BusinessVO;
import com.curfing.vo.MemberVO;

public interface MemberMapper {

	//일반회원 회원가입
	public void memberJoin(MemberVO member);
	
	//사업자 회원가입
	public void businessJoin(BusinessVO business);

	// 아이디 중복 검사
	public int idCheck(String userId);
	
	//일반회원 로그인
    public MemberVO memberLogin(MemberVO member);
    
    //사업자 로그인
    public BusinessVO BusinessLogin(BusinessVO business);


}
