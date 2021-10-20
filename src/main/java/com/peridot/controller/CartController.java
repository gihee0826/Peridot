package com.peridot.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.peridot.service.CartService;
import com.peridot.vo.CartListVO;
import com.peridot.vo.CartVO;
import com.peridot.vo.MemberVO;
import com.peridot.vo.OrderDetailVO;
import com.peridot.vo.OrderListVO;
import com.peridot.vo.OrderVO;

@RequestMapping(value="/cart")
@Controller
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	@RequestMapping(value="/pay", method = RequestMethod.POST)
	public String payPOST(HttpSession session, Model model) throws Exception{
		MemberVO member = (MemberVO)session.getAttribute("member");
		 int userNo = member.getUserNo();
		 
		 CartListVO total = cartService.cartTotal(userNo);
		 
		 model.addAttribute("cartTotal",total);
		 
		return "/cart/pay";
	}
	
	@RequestMapping(value="/cart", method = RequestMethod.GET)
	public String cartGET() {
		
		
		return "/cart/cart";
	}
	
	@RequestMapping(value="/cart", method = RequestMethod.POST)
	@ResponseBody
	public int cartPOST(HttpSession session,CartVO cart) throws Exception {
		int result = 0;
		//session에 저장해 두었던 userId가져오기
		MemberVO member = (MemberVO)session.getAttribute("member");
		if(member != null) {
			cart.setUserNo(member.getUserNo());
			//db에 저장된 cartlist가져오기
			cartService.cartAdd(cart);
			  result = 1;
			 }
		
		
		
		
		return result;
	}
	
	// 카트 목록
	@RequestMapping(value = "/cartList", method = RequestMethod.GET)
	public String getCartList(HttpSession session, Model model) throws Exception {
	 
	 MemberVO member = (MemberVO)session.getAttribute("member");
	 int userNo = member.getUserNo();
	 
	 List<CartListVO> cartList = cartService.cartList(userNo);
	 CartListVO total = cartService.cartTotal(userNo);
	 
	 
	 model.addAttribute("cartList", cartList);
	 model.addAttribute("cartTotal",total);
	 
	 return "cart/cart";
	}
	
	@RequestMapping(value="/order", method = RequestMethod.POST)
	public String orderPOST(HttpSession session, OrderVO order, OrderDetailVO detail) throws Exception {
		MemberVO member = (MemberVO)session.getAttribute("member");
		int userNo = member.getUserNo();
		
		order.setUserNo(userNo);
		
		cartService.order(order);
		
		int orderNo = order.getOrderNo();
		
		detail.setOrderNo(orderNo);
		
		cartService.orderDetail(detail);
		
		
		return "member/mypage";
	}
	
	
	// 주문 목록
	@RequestMapping(value = "/orderList", method = RequestMethod.GET)
	public String getOrderList(HttpSession session, OrderVO order, Model model) throws Exception {
	 
	 
	 MemberVO member = (MemberVO)session.getAttribute("member");
	 int userNo = member.getUserNo();
	 
	 order.setUserNo(userNo);
	 
	 List<OrderVO> orderList = cartService.orderList(order);
	 
	 model.addAttribute("orderList", orderList);
	 
	 return "cart/orderList";
	}
	
	// 주문 상세 목록
	@RequestMapping(value = "/orderView", method = RequestMethod.GET)
	public String getOrderList(HttpSession session,
	      @RequestParam("n") int orderNo,
	      OrderListVO order, Model model) throws Exception {
	 
	 
	 MemberVO member = (MemberVO)session.getAttribute("member");
	 int userNo = member.getUserNo();
	 
	 order.setUserNo(userNo);
	 order.setOrderNo(orderNo);
	 
	 List<OrderListVO> orderView = cartService.orderView(order);
	 model.addAttribute("orderView", orderView);
	 
	 return "cart/orderView";
	}
	
	// 카트 삭제
	@ResponseBody
	@RequestMapping(value = "/deleteCart", method = RequestMethod.POST)
	public int deleteCart(HttpSession session,
	     @RequestParam(value = "chbox[]") List<String> chArr, CartVO cart) throws Exception {
	 
	 
	 MemberVO member = (MemberVO)session.getAttribute("member");
	 int userNo = member.getUserNo();
	 
	 int result = 0;
	 int cartNo = 0;
	 
	 
	 if(member != null) {
	  cart.setUserNo(userNo);
	  
	  for(String i : chArr) {   
	   cartNo = Integer.parseInt(i);
	   cart.setCartNo(cartNo);
	   cartService.deleteCart(cart);
	  }   
	  result = 1;
	 }  
	 return result;  
	}
	
}

