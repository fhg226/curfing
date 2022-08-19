package com.curfing.controller;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.curfing.service.MemberService;
import com.curfing.vo.BusinessVO;
import com.curfing.vo.MemberVO;

import lombok.extern.log4j.Log4j;


@Controller
@Log4j
@RequestMapping(value = "/member")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private MemberService memberservice;

	@Autowired
    private JavaMailSender mailSender;
 
	// 회원가입 페이지 이동
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public void joinGET() {

		log.info("회원가입 페이지 진입");

	}
	 // 로그인 페이지 이동
 	@RequestMapping(value = "/login", method = RequestMethod.GET)
 	public void loginGET() {

 		log.info("로그인 페이지 진입");
 		
 	}

	//일반회원 페이지 회원가입
	@RequestMapping(value = "/normal", method = RequestMethod.GET)
	public void normalGET() {

		log.info("회원가입 페이지 진입");

	}

	//일반회원 회원가입
	@RequestMapping(value = "/normal", method = RequestMethod.POST)
	public String normalPOST(MemberVO member) throws Exception {

		// 회원가입 서비스 실행
		memberservice.memberJoin(member);
		return "redirect:/home";

	}
	
	//사업자회원 페이지 회원가입
		@RequestMapping(value = "/business", method = RequestMethod.GET)
		public void businessGET() {

			log.info("사업자 회원가입 페이지 진입");

		}
		
	//사업자회원 페이지 회원가입
	@RequestMapping(value = "/business", method = RequestMethod.POST)
	public String businessPOST(BusinessVO business) throws Exception {

			// 회원가입 서비스 실행
			memberservice.businessJoin(business);
		return "redirect:/home";

	}
	
	//일반회원 아이디 중복 검사
	@RequestMapping(value = "/memberIdChk", method = RequestMethod.POST)
	@ResponseBody
	public String memberIdChkPOST(String userid) throws Exception{
		
		log.info("memberIdChk() 진입");
		
		int result = memberservice.idCheck(userid);
		
		log.info("결과값 = " + result);
		
		if(result != 0) {
			
			return "fail";	// 중복 아이디가 존재
			
		} else {
			
			return "success";	// 중복 아이디 x
			
		}	
		
	} // memberIdChkPOST() 종료	
	
	//사업자 아이디 중복 검사
	@RequestMapping(value = "/memberIdCheck", method = RequestMethod.POST)
	@ResponseBody
	public String IdChkPOST(String memberid) throws Exception{
		
		log.info("memberIdChk() 진입");
		
		int result = memberservice.memberidCheck(memberid);
		
		log.info("결과값 = " + result);
		
		if(result != 0) {
			
			return "fail";	// 중복 아이디가 존재
			
		} else {
			
			return "success";	// 중복 아이디 x
			
		}	
		
	} // memberIdChkPOST() 종료	
	
	
	// 로그인 페이지 이동
	@RequestMapping(value = "/normallogin", method = RequestMethod.GET)
	public void normalloginGET() {

		log.info("로그인 페이지 진입");
		
	}

    //일반회원 로그인 
    @RequestMapping(value="/normallogin", method=RequestMethod.POST)
    public String normalPOST(HttpServletRequest request, MemberVO member, RedirectAttributes rttr) throws Exception{
        
        //System.out.println("login 메서드 진입");
        //System.out.println("전달된 데이터 : " + member);
        
    	   HttpSession session = request.getSession();
    	   MemberVO vo = memberservice.memberLogin(member);
    	   
    	   if(vo == null) {                                // 일치하지 않는 아이디, 비밀번호 입력 경우
               
               int result = 0;
               rttr.addFlashAttribute("result", result);
               return "redirect:/member/normallogin";
               
           }
    	 
           session.setAttribute("member", vo);             // 일치하는 아이디, 비밀번호 경우 (로그인 성공)
           
           return "redirect:/home";
    }
    // 로그인 페이지 이동
 	@RequestMapping(value = "/businesslogin", method = RequestMethod.GET)
 	public void businessloginGET() {

 		log.info("사업자 로그인 페이지 진입");
 		
 	}

     //사업자 로그인 
     @RequestMapping(value="/businesslogin", method=RequestMethod.POST)
     public String businessPOST(HttpServletRequest request, BusinessVO bvo, RedirectAttributes rttr) throws Exception{
         
         //System.out.println("login 메서드 진입");
         //System.out.println("전달된 데이터 : " + member);
         
     	   HttpSession session = request.getSession();
     	   BusinessVO mvo = memberservice.memberLogin2(bvo);
     	   
     	   if(mvo == null) {                                // 일치하지 않는 아이디, 비밀번호 입력 경우
                
                int result = 0;
                rttr.addFlashAttribute("result", result);
                return "redirect:/member/businesslogin";
                
            }
     	 
            session.setAttribute("member", mvo);             // 일치하는 아이디, 비밀번호 경우 (로그인 성공)
            
            return "redirect:/home";
     }
  

 
    /* 메인페이지 로그아웃 */
    @RequestMapping(value="logout.do", method=RequestMethod.GET)
    public String logoutMainGET(HttpServletRequest request) throws Exception{
        

        logger.info("logoutMainGET메서드 진입");
        
        HttpSession session = request.getSession();
        
        session.invalidate();
        
        return "redirect:/home";        
        
    }
	
	 // 이메일 인증 
    @RequestMapping(value="/mailCheck", method=RequestMethod.GET)
    @ResponseBody
    public String mailCheckGET(String email) throws Exception{
        
       
                
    	/* 인증번호(난수) 생성 */
        Random random = new Random();
        int checkNum = random.nextInt(8888) + 1111;
        logger.info("인증번호 " + checkNum);
        
        /* 이메일 보내기 */
        String setFrom = "parkl0912@naver.com";
        String toMail = email;
        String title = "회원가입 인증 이메일 입니다.";
        String content = 
                "저희 Curfing 방문해주셔서 감사합니다." +
                "<br><br>" + 
                "인증 번호는 " + checkNum + "입니다." + 
                "<br><br>" + 
                "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
        
 try {
            
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
            helper.setFrom(setFrom);
            helper.setTo(toMail);
            helper.setSubject(title);
            helper.setText(content,true);
            mailSender.send(message);
            
        }catch(Exception e) {
            e.printStackTrace();
        }
 	String num = Integer.toString(checkNum);
	return num;

    }
    
 // 아이디 찾기 페이지 이동
 	@RequestMapping(value = "/userSearch", method = RequestMethod.GET)
 	public void userSearchGET() {

 		log.info("아이디 찾기 페이지 진입");
 		
 	}
    
  //아이디 찾기 
  	@RequestMapping(value = "/find_id", method = RequestMethod.POST)
  	@ResponseBody
  	public String find_id(String username, String phone) {
  		
  	String result = memberservice.findid(username, phone);
  		
  	return result;
  	}

}