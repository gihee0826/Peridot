package com.peridot.vo;

public class CardVO {
	
	/*
	 * userNo number NOT NULL,
	cardNo number NOT NULL,
	cardTitle varchar2(100) NOT NULL,
	cardNum varchar2(100) NOT NULL,
	cardMonth varchar2(50) NOT NULL,
	cardYear varchar2(50) NOT NULL,
	cardUser_name varchar2(100) NOT NULL,
	cardSc number NOT NULL,
	PRIMARY KEY (cardNo)
	 */
	
	private int userNo;
	private int cardNo;
	private String cardTitle;
	private String cardNum;
	private String cardMonth;
	private String cardYear;
	private String cardUserName;
	private String cardSc;
	
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getCardNo() {
		return cardNo;
	}
	public void setCardNo(int cardNo) {
		this.cardNo = cardNo;
	}
	public String getCardTitle() {
		return cardTitle;
	}
	public void setCardTitle(String cardTitle) {
		this.cardTitle = cardTitle;
	}
	public String getCardNum() {
		return cardNum;
	}
	public void setCardNum(String cardNum) {
		this.cardNum = cardNum;
	}
	public String getCardMonth() {
		return cardMonth;
	}
	public void setCardMonth(String cardMonth) {
		this.cardMonth = cardMonth;
	}
	public String getCardYear() {
		return cardYear;
	}
	public void setCardYear(String cardYear) {
		this.cardYear = cardYear;
	}
	
	public String getCardUserName() {
		return cardUserName;
	}
	public void setCardUserName(String cardUserName) {
		this.cardUserName = cardUserName;
	}
	public String getCardSc() {
		return cardSc;
	}
	public void setCardSc(String cardSc) {
		this.cardSc = cardSc;
	}
	
	
}
