package com.peridot.service;

import java.util.List;

import com.peridot.vo.CartListVO;
import com.peridot.vo.CartVO;
import com.peridot.vo.OrderDetailVO;
import com.peridot.vo.OrderListVO;
import com.peridot.vo.OrderVO;

public interface CartService {
	
	//카트담기
	public int cartAdd(CartVO cart) throws Exception;
	//카트리스트
	public List<CartListVO> cartList(int userNo) throws Exception;
	//금액합산
	public CartListVO cartTotal(int userNo) throws Exception;
	//주문정보
	public int order(OrderVO order) throws Exception;
	//주문상세보기
	public int orderDetail(OrderDetailVO detail) throws Exception;
	//주문보기
	public List<OrderVO>orderList(OrderVO order) throws Exception;
	//주문보기!!!
	public List<OrderListVO>orderView(OrderListVO order) throws Exception;
	//카트삭제
	public int deleteCart(CartVO cart) throws Exception;
}
