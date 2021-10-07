package com.peridot.service;

import com.peridot.vo.CardVO;
import com.peridot.vo.MemberVO;

public interface MemberService {
	
	//회원가입
	public int memberJoin(MemberVO member) throws Exception;

	// 아이디 중복 검사
	public int emailCheck(String memberEmail) throws Exception;
	
	/* 로그인 */
    public MemberVO memberLogin(MemberVO member) throws Exception;
    
    /* 회원정보 보기 */
    public MemberVO memberMypage(MemberVO user) throws Exception;
    
    // 회원정보 수정
    public int memberUpdate(MemberVO vo)throws Exception;
    
    //카드 추가
    public void cardAdd(CardVO member) throws Exception;
	
}
