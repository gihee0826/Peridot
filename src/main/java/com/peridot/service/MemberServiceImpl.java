package com.peridot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.peridot.dao.MemberDAO;
import com.peridot.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDAO memberdao;

	@Override
	public void memberJoin(MemberVO member) throws Exception {
		
		memberdao.memberJoin(member);
		
	}


	@Override
	public int emailCheck(String memberEmail) throws Exception {
		
		memberdao.emailCheck(memberEmail);
		return 0;
		
	}
	
	
	 /* 로그인 */
    @Override
    public MemberVO memberLogin(MemberVO member) throws Exception {
        
        return memberdao.memberLogin(member);
    }
}
