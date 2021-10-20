package com.peridot.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.peridot.vo.CategoryVO;
import com.peridot.vo.ProductVO;

@Repository
public class CategoryDAO {

	@Autowired
	private SqlSession sqlSession;
	
	//매퍼연결
	private static final String NameSpace ="com.peridot.mapper.CategoryMapper";
	
	public List<CategoryVO> ctg(int categoryCode){
		System.out.println("카테고리코드 : "+categoryCode);
		return sqlSession.selectList(NameSpace+".ctg",categoryCode);
	}
		
	public List<CategoryVO> gctg(int categoryGen){
		System.out.println("카테고리GEN : "+categoryGen);
			return sqlSession.selectList(NameSpace+".ctg",categoryGen);	
	
	}
	
	public CategoryVO ctgn(int categoryCode) {
		return sqlSession.selectOne(NameSpace+".ctgn",categoryCode);	
	}
	
	
}
