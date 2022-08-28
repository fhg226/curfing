package com.curfing.service;



import com.curfing.domain.UserVO;
import com.curfing.vo.BusinessVO;

public interface MemberService {

   //일반회원 회원가입
   public void memberJoin(UserVO user) throws Exception;
   
   //사업자 회원가입
   public void businessJoin(BusinessVO business) throws Exception;


   //아이디 중복 체크
   public int idCheck(String userid) throws Exception;
   
   //사업자 중복 체크
   public int memberidCheck(String memberid) throws Exception;

   //일반회원 로그인
    public UserVO memberLogin(UserVO user) throws Exception;
    
    //사업자 로그인
     public BusinessVO memberLogin2(BusinessVO business) throws Exception;
     

     
}