package com.peridot.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.peridot.vo.Criteria;
import com.peridot.vo.ProductVO;

@Repository
public class ProductDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	//매퍼연결
	private static final String NameSpace ="com.peridot.mapper.ProductMapper";
	
	//리스트
	public List<ProductVO> list(int categoryCode) {
		return sqlSession.selectList(NameSpace+".productList",categoryCode);
	}
	
	//상세보기
	public ProductVO detail(int productNo) {
		return sqlSession.selectOne(NameSpace+".detail",productNo);
	}
	
	//상품검색
	public List<ProductVO> searchList(Criteria cri){
		return sqlSession.selectList(NameSpace+".search",cri);
	}
}
