package com.peridot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.peridot.dao.CartDAO;
import com.peridot.vo.CartListVO;
import com.peridot.vo.CartVO;
import com.peridot.vo.OrderDetailVO;
import com.peridot.vo.OrderListVO;
import com.peridot.vo.OrderVO;

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
	//금액합산
	@Override
	public CartListVO cartTotal(int userNo) throws Exception {
		
		return cartDao.cartTotal(userNo);
	}
	//주문정보
	@Override
	public int order(OrderVO order) throws Exception {
		
		return cartDao.order(order);
	}
	//주문상세보기
	@Override
	public int orderDetail(OrderDetailVO detail) throws Exception {
		
		return cartDao.orderDetail(detail);
	}
	//주문보기
	@Override
	public List<OrderVO> orderList(OrderVO order) throws Exception {
		
		return cartDao.orderList(order);
	}
	//주문보기!!!
	@Override
	public List<OrderListVO> orderView(OrderListVO order) throws Exception {
		
		return cartDao.orderView(order);
	}
	//카트삭제
	@Override
	public int deleteCart(CartVO cart) throws Exception {
		
		return cartDao.deleteCart(cart);
	}

}
