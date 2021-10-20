package com.peridot.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.peridot.vo.CartListVO;
import com.peridot.vo.CartVO;
import com.peridot.vo.OrderDetailVO;
import com.peridot.vo.OrderListVO;
import com.peridot.vo.OrderVO;

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
	
	//카트 금액합산
	public CartListVO cartTotal(int userNo) {
		return sqlSession.selectOne(NameSpace+".cartTotal",userNo);
	}
	
	//주문정보
	public int order(OrderVO order) {
		return sqlSession.insert(NameSpace+".order",order);
	}
	//주문상세보기
	public int orderDetail(OrderDetailVO detail ) {
		return sqlSession.insert(NameSpace+".orderDetail",detail);
	}
	//주문보기
	public List<OrderVO>orderList(OrderVO order) {
		return sqlSession.selectList(NameSpace+".orderList",order);
	}
	//주문보기!!!
	public List<OrderListVO>orderView(OrderListVO order) {
		return sqlSession.selectList(NameSpace+".orderView",order);
	}
	
	//카트삭제
	public int deleteCart(CartVO cart) {
		return sqlSession.delete(NameSpace+".deleteCart",cart);
	}
}
