package com.peridot.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.peridot.vo.CartVO;

@Repository
public class CartDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String NameSpace ="com.peridot.mapper.CartMapper";
	
	
	public int cartAdd(CartVO cart) {
		return sqlSession.insert(NameSpace+".cartAdd", cart);
	}
}
