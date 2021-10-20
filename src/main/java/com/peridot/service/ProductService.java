package com.peridot.service;

import java.util.List;

import com.peridot.vo.ProductVO;

public interface ProductService {
	
	List<ProductVO> list(int categoryCode) throws Exception;
	
	ProductVO detail(int productNo) throws Exception;
}
