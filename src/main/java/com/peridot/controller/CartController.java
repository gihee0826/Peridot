package com.peridot.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.peridot.service.CartService;
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
	public String cartPOST(Locale locale, Model model, CartVO cart) throws Exception {
		
		cartService.cartAdd(cart);
		//user는 session에서 가져오고
		//product는 pk로 가져오기
		return "/cart/cart";
	}
}
