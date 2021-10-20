package com.peridot.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.peridot.service.CategoryService;
import com.peridot.service.ProductService;
import com.peridot.vo.CategoryVO;
import com.peridot.vo.ProductVO;

@RequestMapping(value="/List")
@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categoryService;
	
	//슈퍼스타 리스트 보여주기
	@RequestMapping(value="/SuperstarList", method = RequestMethod.GET)
	public String listGET(Locale locale, Model model,int categoryCode)throws Exception {
		
		System.out.println("!!!!!!!!!!!!리스트 컨트롤러");
		
		//카테고리 제목만
		CategoryVO cvo = categoryService.ctgn(categoryCode);
		System.out.println("cn:"+categoryCode);
		model.addAttribute("ctgn", cvo);
		
		//리스트로 넘어갔을 때 상품 보여주는거
		List<ProductVO> plist = productService.list(categoryCode);
		model.addAttribute("plist",plist);
		System.out.println("c:"+categoryCode);
		System.out.println("p:"+plist.size());

		//리스트 소 카테고리 타지 말라고 0 카테고리 다 보여줘야도ㅣ니까 카테고리 있으면 이거 무조건 있어야함
		List<CategoryVO> clist = categoryService.ctg(0);
		model.addAttribute("clist",clist);
		System.out.println("상품사이즈:"+clist.size());
		
		return "/List/SuperstarList";
	}
	
	
	//상품 디테일
		@RequestMapping(value="/Detail", method = RequestMethod.GET)
		public String DetailGET(Locale locale, Model model, int productNo) throws Exception {
			
		ProductVO vo = productService.detail(productNo);
		model.addAttribute("detail", vo);
		
			
		return "/List/Detail";
		}
}
