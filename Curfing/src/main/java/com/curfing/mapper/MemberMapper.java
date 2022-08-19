package com.curfing.mapper;


import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.curfing.vo.BusinessVO;
import com.curfing.vo.MemberVO;

public interface MemberMapper {

	//일반회원 회원가입
	public void memberJoin(MemberVO member);
	
	//사업자 회원가입
	public void businessJoin(BusinessVO business);

	//일반회원 아이디 중복 검사
	public int idCheck(String userId);
	
	//사업자 아이디 중복 검사
	public int memberidCheck(String memberid);
	
	//일반회원 로그인
    public MemberVO memberLogin(MemberVO member);
    
    //사업자 로그인
    public BusinessVO memberLogin2(BusinessVO business);
 
    //아이디 찾기
	public String findid(@Param("username")String username,@Param("phone")String phone);

}
