package com.peridot.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.peridot.service.ProductService;
import com.peridot.vo.ProductVO;

@RequestMapping(value="/List")
@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	//리스트 보여주기
	@RequestMapping(value="/List", method = RequestMethod.GET)
	public String listGET(Locale locale, Model model)throws Exception {
		List<ProductVO> list = productService.list();
		
		
		model.addAttribute("list",list);
		return "/List/List";
	}
	
	
	//상품 디테일
		@RequestMapping(value="/Detail", method = RequestMethod.GET)
		public String DetailGET(Locale locale, Model model, int productNo) throws Exception {
			
		ProductVO vo = productService.detail(productNo);
		model.addAttribute("detail", vo);
		
			
		return "/List/Detail";
		}
}
