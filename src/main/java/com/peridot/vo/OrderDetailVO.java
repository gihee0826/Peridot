package com.peridot.vo;

public class OrderDetailVO {
	
	
	/*
	 * orderDetailno number NOT NULL,
	orderNo number NOT NULL,
    productName varchar2(100) NOT NULL,
	productCount number NOT NULL,
	productPrice number NOT NULL,
	orderDetail_status varchar2(20),
	 */
	private int orderDetailNo;
	private int orderNo;
	private String productName;
	private int productCount;
	private int productPrice;
	
	
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public int getOrderDetailNo() {
		return orderDetailNo;
	}
	public void setOrderDetailNo(int orderDetailNo) {
		this.orderDetailNo = orderDetailNo;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getProductCount() {
		return productCount;
	}
	public void setProductCount(int productCount) {
		this.productCount = productCount;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	
	
}
