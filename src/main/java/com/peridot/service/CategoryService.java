package com.peridot.service;

import java.util.List;

import com.peridot.vo.CategoryVO;

public interface CategoryService {

	public List<CategoryVO> ctg(int categoryCode) throws Exception;

	public List<CategoryVO> gctg(int categoryGen) throws Exception;
	
	public CategoryVO ctgn(int categoryCode) throws Exception;
}

