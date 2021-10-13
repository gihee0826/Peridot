package com.peridot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping(value="/cart")
@Controller
public class CartController {
	
	@RequestMapping(value="/pay")
	public String payGET() {
		
		return "/cart/pay";
	}
}
