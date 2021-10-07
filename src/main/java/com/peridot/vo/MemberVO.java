package com.peridot.vo;

public class MemberVO {
	
	/*
	user_no number NOT NULL,
	user_firstname varchar2(40) NOT NULL,
    user_lastname varchar2(40) NOT NULL,
	user_email varchar2(100) NOT NULL,
    user_pass varchar2(100) NOT NULL,
	user_phone varchar2(50) NOT NULL,
	-- 관리자일경우 = Y
	-- 일반 회원일 경우 = N
	user_admin char(2) NOT NULL,
	email_check varchar2(10) NOT NULL,
    pass_check varchar2(100) NOT NULL,
	user_date date NOT NULL,
	PRIMARY KEY (user_no)
	 */
	
	private int userNo;
	private String userFirstName;
	private String userLastName;
	private String userEmail;
	private String userPass;
	private String userPhone;
	private String userGender;
	private String userName;
	private String userBirth;
	private String userAdmin;
	private String userEmailCheck;
	private String userPassCheck;
	private String date;
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getUserFirstName() {
		return userFirstName;
	}
	public void setUserFirstName(String userFirstName) {
		this.userFirstName = userFirstName;
	}
	public String getUserLastName() {
		return userLastName;
	}
	public void setUserLastName(String userLastName) {
		this.userLastName = userLastName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserBirth() {
		return userBirth;
	}
	public void setUserBirth(String userBirth) {
		this.userBirth = userBirth;
	}
	public String getUserAdmin() {
		return userAdmin;
	}
	public void setUserAdmin(String userAdmin) {
		this.userAdmin = userAdmin;
	}
	public String getUserEmailCheck() {
		return userEmailCheck;
	}
	public void setUserEmailCheck(String userEmailCheck) {
		this.userEmailCheck = userEmailCheck;
	}
	public String getUserPassCheck() {
		return userPassCheck;
	}
	public void setUserPassCheck(String userPassCheck) {
		this.userPassCheck = userPassCheck;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	
	
	
	
	
	
	
	
}
