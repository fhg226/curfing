package com.curfing.mapper;



import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.curfing.vo.BusinessVO;
import com.curfing.domain.UserVO;

public interface MemberMapper {

   //일반회원 회원가입
   public void memberJoin(UserVO user);
   
   //사업자 회원가입
   public void businessJoin(BusinessVO business);

   //일반회원 아이디 중복 검사
   public int idCheck(String userId);
   
   //사업자 아이디 중복 검사
   public int memberidCheck(String memberid);
   
   //일반회원 로그인
    public UserVO memberLogin(UserVO user);
    
    //사업자 로그인
    public BusinessVO memberLogin2(BusinessVO business);
 
    //일반 정보수정
    @Mapper
    public void updateuser(UserVO vo);
    
    //읽어오는거
    public List<UserVO> read(UserVO vo);
    

}