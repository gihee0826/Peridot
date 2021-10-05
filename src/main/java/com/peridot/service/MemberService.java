package com.peridot.service;

import com.peridot.vo.MemberVO;

public interface MemberService {
	
	//회원가입
	public void memberJoin(MemberVO member) throws Exception;

	// 아이디 중복 검사
	public int emailCheck(String memberEmail) throws Exception;
	
	/* 로그인 */
    public MemberVO memberLogin(MemberVO member) throws Exception;
}
