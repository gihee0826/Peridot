package com.peridot.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.peridot.vo.CartListVO;
import com.peridot.vo.CartVO;

@Repository
public class CartDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String NameSpace ="com.peridot.mapper.CartMapper";
	
	//카트담기
	public int cartAdd(CartVO cart) {
		return sqlSession.insert(NameSpace+".cartAdd", cart);
	}
	//카트리스트
	public List<CartListVO> cartList(int userNo) {
		return sqlSession.selectList(NameSpace+".cartList",userNo);
	}
}
