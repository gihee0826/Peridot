package com.peridot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.peridot.dao.CartDAO;
import com.peridot.vo.CartVO;

@Service
public class CartServiceImpl implements CartService{
	
	@Autowired
	private CartDAO cartDao;
	
	@Override
	public int cartAdd(CartVO cart) throws Exception {
		
		return cartDao.cartAdd(cart) ;
	}

}
