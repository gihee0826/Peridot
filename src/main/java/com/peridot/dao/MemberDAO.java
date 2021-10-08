package com.peridot.dao;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.peridot.vo.CardVO;
import com.peridot.vo.MemberVO;

@Repository
public class MemberDAO {
	
	@Autowired
	//SqlSession이 MemberDAO에 자동으로 주입되게 한다.
	private SqlSession sqlSession;
	
	//매퍼연결
	private static final String NameSpace ="com.peridot.mapper.MemberMapper";
	
	/*회원가입*/
	//session에 새로운 회원정보를 저장한다.
	public int memberJoin(MemberVO member) {
		return sqlSession.insert(NameSpace+".memberJoin",member);
	}
	
	// 아이디 중복 검사
	//session에 저장된 아이디를 비교한다
	public int emailCheck(String memberEmail) {
		return sqlSession.selectOne(NameSpace+".idCheck", memberEmail);
	}
	
	/* 로그인 */
	//session에 저장된 로그인 정보를 가져온다
	//memberVO를 쓰는 이유는 있는 그대로를 전달하기 위해
    public MemberVO memberLogin(MemberVO member) {
		return sqlSession.selectOne(NameSpace+".memberLogin", member);
		
    	
    }
    //회원정보 수정
    //session에 저장된 로그인 정보를 가져와 업데이트 한다.
	public int memberUpdate(MemberVO member) {
		return sqlSession.update(NameSpace+".memberUpdate",member);
		
	}
	
	//회원정보보기
	//session에 있는 로그인 정보를 불러와서 보여준다.
	public MemberVO memberMypage(int userNo) {
		return sqlSession.selectOne(NameSpace+".memberMypage",userNo);
		
	}
	//카드등록
	//session에 새로운 카드를 등록해 준다
	public int cardAdd(CardVO card) {
		return sqlSession.insert(NameSpace+".cardAdd", card);
		
	}
	//비밀번호 변경
	//session에 저장된 비밀번호를 변경해준다ㄴ
	public int passChange(MemberVO member) {
		return sqlSession.update(NameSpace+".passChange",member);
	}
	
}
