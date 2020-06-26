package com.member.model.vo;

import java.io.Serializable;

public class Member implements Serializable {

	private static final long serialVersionUID = 59L;
	
	private int userno;
	private String userid;
	private String username;
	private String passwd;
	private String phone;
	private String email;
	private String address;
	private int age;
	private String gender;
	
	public Member() {}
	
	public Member(int userno, String userid, String username, String passwd, String phone, String email,
			String address, int age, String gender) {
		super();
		this.userno = userno;
		this.userid = userid;
		this.username = username;
		this.passwd = passwd;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.age = age;
		this.gender = gender;
	}

	// 회원 가입용 생성자
	public Member(String userid, String username, String passwd, String phone, String email, String address,
			 int age, String gender) {
		super();
		this.userid = userid;
		this.username = username;
		this.passwd = passwd;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.age = age;
		this.gender = gender;
	}
	
	// 로그인용 생성자
	public Member(String userid, String passwd) {
		super();
		this.userid = userid;
		this.passwd = passwd;
	}	
	
	// 이메일 로그인
	public Member(String username, String email, String phone) {
		super();
		this.username = username;
		this.phone = phone;
		this.email = email;
	}
	
	// 비번 업데이트	
	public Member(String passwd) {
		super();
		this.passwd = passwd;
	}

	@Override
	public String toString() {
		return "Member [userno=" + userno + ", userid=" + userid + ", username=" + username + ", passwd=" + passwd
				+ ", phone=" + phone + ", email=" + email + ", address=" + address + ", age=" + age + ", gender="
				+ gender + "]";
	}

	public int getUserno() {
		return userno;
	}

	public String getUserid() {
		return userid;
	}

	public String getUsername() {
		return username;
	}

	public String getPasswd() {
		return passwd;
	}

	public String getPhone() {
		return phone;
	}

	public String getEmail() {
		return email;
	}

	public String getAddress() {
		return address;
	}

	public int getAge() {
		return age;
	}

	public String getGender() {
		return gender;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

}
