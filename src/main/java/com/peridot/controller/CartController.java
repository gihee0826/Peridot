package com.peridot.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.peridot.service.CartService;
import com.peridot.vo.CartListVO;
import com.peridot.vo.CartVO;
import com.peridot.vo.MemberVO;

@RequestMapping(value="/cart")
@Controller
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	@RequestMapping(value="/pay")
	public String payGET() {
		
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
	 
	 model.addAttribute("cartList", cartList);
	 
	 return "cart/cart";
	}
}
