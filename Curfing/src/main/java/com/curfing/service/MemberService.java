package com.curfing.service;




import com.curfing.vo.BusinessVO;
import com.curfing.vo.MemberVO;

public interface MemberService {

	//일반회원 회원가입
	public void memberJoin(MemberVO member) throws Exception;
	
	//사업자 회원가입
	public void businessJoin(BusinessVO business) throws Exception;


	//아이디 중복 체크
	public int idCheck(String userid) throws Exception;
	
	//사업자 중복 체크
	public int memberidCheck(String memberid) throws Exception;

	//일반회원 로그인
    public MemberVO memberLogin(MemberVO member) throws Exception;
    
    //사업자 로그인
  	public BusinessVO memberLogin2(BusinessVO business) throws Exception;
  	
 
  	// 아이디 찾기
 	public String findid(String username, String phone);
 	

}