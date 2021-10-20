package com.peridot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.peridot.dao.CategoryDAO;
import com.peridot.vo.CategoryVO;


@Service
public class CategoryServiceImpl implements CategoryService{

	@Autowired
	private CategoryDAO categoryDao;
	
	//소 리스트 카테고리
	@Override
	public List<CategoryVO> ctg(int categoryCode) throws Exception {
		System.out.println("카테고리코드 : "+categoryCode);
		return categoryDao.ctg(categoryCode);
	}
	
	//대 리스트 카테고리
	@Override
	public List<CategoryVO> gctg(int categoryGen) throws Exception {
		System.out.println("카테고리GEN : "+categoryGen);
		return categoryDao.ctg(categoryGen);
		}

	//카테고ㅣ 제목 받아오기
	@Override
	public CategoryVO ctgn(int categoryCode) throws Exception {

		return categoryDao.ctgn(categoryCode);
	}
}
