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
import com.peridot.vo.CardVO;
import com.peridot.vo.MemberVO;

@Controller
@RequestMapping(value = "/member")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	//memberservice가 membercontroller에 자동으로 주입되게 한다.
	@Autowired
	private MemberService memberservice;
	
	
	//회원가입 페이지 이동
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String joinGET() {
		
		return "member/join";
				
	}
	
	//회원가입
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String joinPOST(MemberVO member) throws Exception{
		
		// 회원가입 서비스 실행
		memberservice.memberJoin(member);
		
		return "redirect:/";
		
	}

	
	// 아이디 중복 검사
		@RequestMapping(value = "/memberEmailChk", method = RequestMethod.POST)
		@ResponseBody
		public String memberEmailChkPOST(String memberEmail) throws Exception{
			
			
			
			int result = memberservice.emailCheck(memberEmail);
			
			
			
			if(result != 0) {	
				
				return "fail";	// 중복 이메일이 존재
				
			} else {
				
				return "success";	// 중복 이메일 x
				
			}
			
		} // memberIdChkPOST() 종료
		
		//로그인 페이지 이동
		@RequestMapping(value = "/login", method = RequestMethod.GET)
		public void loginGET() {
			
			
			
		}
		
		/* 로그인 */
	    @RequestMapping(value="login", method=RequestMethod.POST)
	    public String loginPOST(HttpServletRequest request, MemberVO member, RedirectAttributes rttr) throws Exception{
	       
	    	HttpSession session = request.getSession();
	    	//service를 호출하는 부분
	    	MemberVO lvo = memberservice.memberLogin(member);
	    	
	    	 if(lvo == null) {                                // 일치하지 않는 아이디, 비밀번호 입력 경우
	             
	             int result = 0;
	             rttr.addFlashAttribute("result", result);
	             return "redirect:/member/login";
	             
	         }
	         
	         session.setAttribute("member", lvo);             // 일치하는 아이디, 비밀번호 경우 (로그인 성공)
	         
	         return "redirect:/";
	    }
	    
	    /* 메인페이지 로그아웃 */
	    @RequestMapping(value="logout.do", method=RequestMethod.GET)
	    public String logoutMainGET(HttpServletRequest request) throws Exception{
	    	
	        
	        HttpSession session = request.getSession();
	        
	        session.invalidate();
	        
	        return "redirect:/";
	    }
	
	    
	    /* 회원정보보기 */
		 @RequestMapping(value = "/mypage")
		 public String mypage(HttpSession session, Model model) throws Exception{
	
			 

			return "/member/mypage";
		 }
		 
		 /* 회원정보수정 */
		 @RequestMapping(value="/update", method = RequestMethod.GET)
		 public String updateGet() {
			 return "member/update";
		 }
		 
		 @RequestMapping(value="/update", method = RequestMethod.POST)
		 public String updatePost(MemberVO member, HttpSession session) throws Exception{
			 
			 //위에 로그인 할때 저장해놓은 session을 조회하기위해 쓴 코드 (session의 member를 조회해 온다)
			 MemberVO lvo = (MemberVO)session.getAttribute("member");
			 
			 //member에 새롭게 정보를 저장한다.
			 member.setUserNo(lvo.getUserNo());
			 
			 //업데이트를 한다
			 memberservice.memberUpdate(member);
			 //업데이트된 service를 호출한다
			MemberVO lvo2 = memberservice.memberMypage(lvo.getUserNo());
			//session을 조회한다.
			session.setAttribute("member", lvo2);
				
			return "redirect:/member/mypage";
		 }
		
		 
		 //카드추가 이동
			@RequestMapping(value = "/card", method = RequestMethod.GET)
			public String cardGET() {
				
				return "member/card";
						
			}
			
			//카드추가
			@RequestMapping(value="/card", method=RequestMethod.POST)
			public String cardPOST(CardVO card, HttpSession session) throws Exception{
				//userNo가져오기
				MemberVO lvo = (MemberVO)session.getAttribute("member"); 
				//userNo세팅하기
				card.setUserNo(lvo.getUserNo());
				// 카드추가 서비스 실행
				memberservice.cardAdd(card);
				
				return "redirect:/member/mypage";
				
			}
		
		
		//비밀번호 변경
		@RequestMapping(value="/pass", method = RequestMethod.GET)	
		public String passGET() {
			
			return "member/pass";
			
		}
		
		@RequestMapping(value="/pass", method = RequestMethod.POST)
		public String passPOST(MemberVO member, HttpSession session) throws Exception{
			//session에 저장된 로그인 정보를 조회한다 (userNo 가져오기)
			MemberVO lvo = (MemberVO)session.getAttribute("member");
			//userNo세팅하기
			member.setUserNo(lvo.getUserNo());
			//비밀번호를 새로 저장한다
			member.setUserPass(member.getUserPass());
			//비밀번호확인을 새로 저장한다
			member.setUserPassCheck(member.getUserPassCheck());
			//업데이트된 서비스를 호출한다.
			memberservice.passChange(member);
			
			
			return "redirect:/member/mypage";
		}
}