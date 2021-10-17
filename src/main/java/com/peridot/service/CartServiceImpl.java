package com.peridot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.peridot.dao.CartDAO;
import com.peridot.vo.CartListVO;
import com.peridot.vo.CartVO;

@Service
public class CartServiceImpl implements CartService{
	
	@Autowired
	private CartDAO cartDao;
	
	//카트담기
	@Override
	public int cartAdd(CartVO cart) throws Exception {
		
		return cartDao.cartAdd(cart) ;
	}
	//카트리스트
	@Override
	public List<CartListVO> cartList(int userNo) throws Exception {
		
		return cartDao.cartList(userNo);
	}

}
