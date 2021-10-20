package com.peridot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.peridot.dao.ProductDAO;
import com.peridot.vo.ProductVO;

@Service
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	private ProductDAO productDao;
	
	
	//리스트
	@Override
	public List<ProductVO> list(int categoryCode) throws Exception {
		
		return productDao.list(categoryCode);
	
	}

	//상세보기
	@Override
	public ProductVO detail(int productNo) throws Exception {
		
		return productDao.detail(productNo);
	}
	
}
