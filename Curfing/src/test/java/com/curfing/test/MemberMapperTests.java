package com.curfing.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.curfing.mapper.MemberMapper;
import com.curfing.vo.BusinessVO;
import com.curfing.domain.UserVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTests {

	@Autowired
	private MemberMapper membermapper;			//MemberMapper.java 인터페이스 의존성 주입
	
	
	  //회원가입 쿼리 테스트 메서드
	  
	  @Test public void memberJoin() throws Exception{ UserVO user = new
	  UserVO();
	  
	  user.setUsername("김창선"); //회원 이름
	  user.setUserid("test3"); //회원 아이디 
	  user.setPwd("test3"); //회원 비밀번호
	  user.setEmail("test3"); //회원 메일 
	  user.setPhone("test3"); //회원 전화번호
	  
	  membermapper.memberJoin(user); //쿼리 메서드 실행
	 
	 }
	 
	
	// 아이디 중복검사
		@Test
		public void memberIdChk() throws Exception{
			String id = "test1";	// 존재하는 아이디
			String id2 = "test123";	// 존재하지 않는 아이디
			membermapper.idCheck(id);
			membermapper.idCheck(id2);
		}
		
		
		 /* 로그인 쿼리 mapper 메서드 테스트 */
	    @Test
	    public void memberLogin() throws Exception{
	        
	        UserVO user = new UserVO();    // UserVO 변수 선언 및 초기화
	        
	        /* 올바른 아이디 비번 입력경우 */
	        user.setUserid("test1");
	        user.setPwd("test1");
	        
	        /* 올바른 않은 아이디 비번 입력경우 */
	        //member.setUserid("test1123");
	        //member.setPwd("test1321321");
	        
	        membermapper.memberLogin(user);
	        System.out.println("결과 값 : " + membermapper.memberLogin(user));
	        
	
	    }

		
		
		  //회원가입 쿼리 테스트 메서드
		  
		  @Test public void businessJoin() throws Exception{ BusinessVO member = new
		  BusinessVO();
		  
		  member.setMembername("test2"); //회원 이름
		  member.setMemberid("test2");  //회원 비밀번호
		  member.setMemberpwd("test2"); //회원 전화번호
		  member.setEmail("test2");
		  member.setMemberJURIRNO("test2");
		  member.setPhoto("test2");
		  member.setPhone("test2");
		  
		  membermapper.businessJoin(member); //쿼리 메서드 실행
		  
		  }
		 
}