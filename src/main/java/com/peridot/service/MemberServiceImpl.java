package com.peridot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.peridot.dao.MemberDAO;
import com.peridot.vo.CardVO;
import com.peridot.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	//MemberDAO가 MemberServiceImpl에 자동으로 주입되게 한다.
	MemberDAO memberdao;
	
	//회원가입
	@Override
	public int memberJoin(MemberVO member) throws Exception {
		
		return memberdao.memberJoin(member);
		
	}

	//이메일체크
	@Override
	public int emailCheck(String memberEmail) throws Exception {
		//DAO를 호출하는 부분
		memberdao.emailCheck(memberEmail);
		return 0;
		
	}
	
	
	 /* 로그인 */
    @Override
    public MemberVO memberLogin(MemberVO member) throws Exception {
    	//DAO를 호출하는 부분
        return memberdao.memberLogin(member);
    }

    //회원정보수정
	@Override
	public int memberUpdate(MemberVO member) throws Exception {
		
		return memberdao.memberUpdate(member);
		
	}

	//회원정보보기
	@Override
	public MemberVO memberMypage(int userNo) throws Exception {
		
		return memberdao.memberMypage(userNo);
		
	}

	//카드추가하기
	@Override
	public int cardAdd(CardVO card) throws Exception {
		
		return memberdao.cardAdd(card);
		
	}

	//비밀번호 변경
	@Override
	public int passChange(MemberVO member) throws Exception {
		
		return memberdao.passChange(member);
	}
	
}
