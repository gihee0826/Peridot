package com.peridot.vo;

public class ProductVO {
	
	/*
	 * category VARCHAR2(100) NOT NULL,
	productNo number NOT NULL,
	productName varchar2(200) NOT NULL,
	productContent1 varchar2(4000) NOT NULL,
    productContent2 varchar2(4000),
    productContent3 varchar2(4000),
	productImg1 varchar2(4000) NOT NULL,
    producrImg2 varchar2(4000),
    productPrice varchar2(100) not null,
	 */
	
	private String category;
	private int productNo;
	private String productName;
	private String productContent1;
	private String productContent2;
	private String productContent3;
	private String productImg1;
	private String producrImg2;
	private String productPrice;
	private int totalPrice;
	
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductContent1() {
		return productContent1;
	}
	public void setProductContent1(String productContent1) {
		this.productContent1 = productContent1;
	}
	public String getProductContent2() {
		return productContent2;
	}
	public void setProductContent2(String productContent2) {
		this.productContent2 = productContent2;
	}
	public String getProductContent3() {
		return productContent3;
	}
	public void setProductContent3(String productContent3) {
		this.productContent3 = productContent3;
	}
	public String getProductImg1() {
		return productImg1;
	}
	public void setProductImg1(String productImg1) {
		this.productImg1 = productImg1;
	}
	public String getProducrImg2() {
		return producrImg2;
	}
	public void setProducrImg2(String producrImg2) {
		this.producrImg2 = producrImg2;
	}
	public String getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}
	
	
}
