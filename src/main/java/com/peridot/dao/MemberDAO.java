package com.peridot.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.peridot.vo.MemberVO;

@Repository
public class MemberDAO {
	
	/*회원가입*/
	public void memberJoin(MemberVO member) {
		
	}
	
	// 아이디 중복 검사
	public int emailCheck(String memberEmail) {
		return 0;
	}
	
	/* 로그인 */
    public MemberVO memberLogin(MemberVO member) {
		return member;
		
    	
    }
}
