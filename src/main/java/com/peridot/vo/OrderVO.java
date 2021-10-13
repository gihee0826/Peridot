package com.peridot.vo;

public class OrderVO {
	
	/*
	 * orderNo number NOT NULL,
	userNo number NOT NULL,
	orderDate date NOT NULL,
	postnum varchar2(20) NOT NULL,
	address1 varchar2(100) NOT NULL,
	address2 varchar2(100) NOT NULL,
	receiverFirstName varchar2(100) NOT NULL,
    receiverLastName varchar2(100) NOT NULL,
	receiverPhone varchar2(50) NOT NULL,
	productNo number NOT NULL,
	 */
	
	private int orderNo;
	private int userNo;
	private String orderDate;
	private String postnum;
	private String addr1;
	private String addr2;
	private String reFirstName;
	private String reLastName;
	private String rePhone;
	private int productNo;
	
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public String getPostnum() {
		return postnum;
	}
	public void setPostnum(String postnum) {
		this.postnum = postnum;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getReFirstName() {
		return reFirstName;
	}
	public void setReFirstName(String reFirstName) {
		this.reFirstName = reFirstName;
	}
	public String getReLastName() {
		return reLastName;
	}
	public void setReLastName(String reLastName) {
		this.reLastName = reLastName;
	}
	public String getRePhone() {
		return rePhone;
	}
	public void setRePhone(String rePhone) {
		this.rePhone = rePhone;
	}
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	
	
}
