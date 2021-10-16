package com.peridot.vo;

public class CartVO {
	
	/*
	 * cartNo number NOT NULL,
	userNo number NOT NULL,
	productNo number NOT NULL,
	productCount number NOT NULL,
    productSize number NOT NULL
	 */
	
	private int cartNo;
	private int userNo;
	private int productNo;
	private int productCount;
	private int productSize;
	
	public int getCartNo() {
		return cartNo;
	}
	public void setCartNo(int cartNo) {
		this.cartNo = cartNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public int getProductCount() {
		return productCount;
	}
	public void setProductCount(int productCount) {
		this.productCount = productCount;
	}
	public int getProductSize() {
		return productSize;
	}
	public void setProductSize(int productSize) {
		this.productSize = productSize;
	}
	
	
}
