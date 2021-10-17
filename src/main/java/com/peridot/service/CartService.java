package com.peridot.service;

import java.util.List;

import com.peridot.vo.CartListVO;
import com.peridot.vo.CartVO;

public interface CartService {
	
	//카트담기
	public int cartAdd(CartVO cart) throws Exception;
	//카트리스트
	public List<CartListVO> cartList(int userNo) throws Exception;
}
