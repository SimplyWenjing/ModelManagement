package com.homework.Model.entity;

/*
 * 用户类
 */
public class User {
	private int userId;
	private String userName;
	private String userPwd;

	/**
	 * 构造函数
	 * 
	 * @param userId
	 * @param userName
	 * @param userPwd
	 */
	public User(int userId, String userName, String userPwd) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPwd = userPwd;
	}

	public User() {
		super();
	}

	// get/set函数
	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

}
