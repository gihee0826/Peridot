package com.peridot.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.peridot.service.CartService;
import com.peridot.service.CategoryService;
import com.peridot.vo.CartListVO;
import com.peridot.vo.CategoryVO;
import com.peridot.vo.MemberVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private CartService cartService;
	@Autowired
	private CategoryService categoryService;
	
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model,HttpSession session) throws Exception {
		
		MemberVO member = (MemberVO)session.getAttribute("member");
		 
		 
		 if(member != null) {
			 int userNo = member.getUserNo();
			 List<CartListVO> cartList = cartService.cartList(userNo);
			 CartListVO total = cartService.cartTotal(userNo);
			 
			 
			 model.addAttribute("cartList", cartList);
			 model.addAttribute("cartTotal",total);
		 }
		 
		//리스트 소 카테고리 타지 말라고 0
			List<CategoryVO> clist = categoryService.ctg(0);
			model.addAttribute("clist",clist);
			System.out.println(clist.size());
		return "home";
	}
	
}
