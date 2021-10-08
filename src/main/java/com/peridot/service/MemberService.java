package com.peridot.service;

import com.peridot.vo.CardVO;
import com.peridot.vo.MemberVO;

//비즈니스 로직을 처리하는 모델 
//DB에 접근하는 DAO를 이용해서 결과값을 받아 온다
public interface MemberService {
	
	//회원가입
	public int memberJoin(MemberVO member) throws Exception;

	// 아이디 중복 검사
	public int emailCheck(String memberEmail) throws Exception;
	
	/* 로그인 */
    public MemberVO memberLogin(MemberVO member) throws Exception;
    
    /* 회원정보 보기 */
    public MemberVO memberMypage(int userNo) throws Exception;
    
    // 회원정보 수정
    public int memberUpdate(MemberVO member)throws Exception;
    
    //카드 추가
    public int cardAdd(CardVO card) throws Exception;
    
    //비밀번호 변경
    public int passChange(MemberVO member) throws Exception;
	
}
