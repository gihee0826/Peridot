package com.peridot.dao;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.peridot.vo.MemberVO;

@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String NameSpace ="com.peridot.mapper.MemberMapper";
	
	/*회원가입*/
	public int memberJoin(MemberVO member) {
		return sqlSession.insert(NameSpace+".memberJoin",member);
	}
	
	// 아이디 중복 검사
	public int emailCheck(String memberEmail) {
		return sqlSession.selectOne(NameSpace+".idCheck", memberEmail);
	}
	
	/* 로그인 */
    public MemberVO memberLogin(MemberVO member) {
		return sqlSession.selectOne(NameSpace+".memberLogin", member);
		
    	
    }

	public MemberVO memberUpdate(MemberVO member) {
		return sqlSession.selectOne(NameSpace+".memberUpdate",member);
		
	}
	
}
