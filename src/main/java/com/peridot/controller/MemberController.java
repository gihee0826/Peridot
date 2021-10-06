package com.peridot.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.peridot.service.MemberService;
import com.peridot.vo.MemberVO;

@Controller
@RequestMapping(value = "/member")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	//memberservice.java가 membercontroller에 자동으로 주입되게 한다.
	@Autowired
	private MemberService memberservice;
	
	
	//회원가입 페이지 이동
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public void joinGET() {
		
		logger.info("회원가입 페이지 진입");
				
	}
	
	//회원가입
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String joinPOST(MemberVO member) throws Exception{
		
		// 회원가입 서비스 실행
		memberservice.memberJoin(member);
		
		return "redirect:/home";
		
	}

	
	// 아이디 중복 검사
		@RequestMapping(value = "/memberEmailChk", method = RequestMethod.POST)
		@ResponseBody
		public String memberEmailChkPOST(String memberEmail) throws Exception{
			
			logger.info("memberEmailChk() 진입");
			
			int result = memberservice.emailCheck(memberEmail);
			
			logger.info("결과값 = " + result);
			
			if(result != 0) {	
				
				return "fail";	// 중복 이메일이 존재
				
			} else {
				
				return "success";	// 중복 이메일 x
				
			}
			
		} // memberIdChkPOST() 종료
		
		//로그인 페이지 이동
		@RequestMapping(value = "/login", method = RequestMethod.GET)
		public void loginGET() {
			
			logger.info("로그인 페이지 진입");
			
		}
		
		/* 로그인 */
	    @RequestMapping(value="login", method=RequestMethod.POST)
	    public String loginPOST(HttpServletRequest request, MemberVO member, RedirectAttributes rttr) throws Exception{
	       
	    	HttpSession session = request.getSession();
	    	MemberVO lvo = memberservice.memberLogin(member);
	    	System.out.println(member.getUserEmail());
	    	System.out.println(member.getUserPass());
	    	
	    	System.out.println(lvo);
	    	
	    	 if(lvo == null) {                                // 일치하지 않는 아이디, 비밀번호 입력 경우
	             
	             int result = 0;
	             rttr.addFlashAttribute("result", result);
	             return "redirect:/member/login";
	             
	         }
	         
	         session.setAttribute("member", lvo);             // 일치하는 아이디, 비밀번호 경우 (로그인 성공)
	         
	         return "redirect:/home";
	    }
	    
	    /* 메인페이지 로그아웃 */
	    @RequestMapping(value="lotout.do", method=RequestMethod.GET)
	    public String logoutMainGET(HttpServletRequest request) throws Exception{
	    	logger.info("logoutMainGET메서드 진입");
	        
	        HttpSession session = request.getSession();
	        
	        session.invalidate();
	        
	        return "redirect:/home";
	    }
	
	    
	    /* 회원정보보기 */
		 @RequestMapping(value = "/mypage")
		 public String mypage(HttpSession session, Model model) throws Exception{
	
			 

			return "/member/mypage";
		 }
		 
		 /* 회원정보수정 */
		 @RequestMapping(value="/update", method = RequestMethod.GET)
		 public void updateGet() {
			 
		 }
		 
		 @RequestMapping(value="/update", method = RequestMethod.POST)
		 public String updatePost(MemberVO member, HttpSession session) throws Exception{
			 
			 memberservice.memberUpdate(member);
			 
			session.invalidate();
				
			return "redirect:/member/mypage";
		 }
	
}