package com.homework.Model.Dao;

import com.homework.Model.entity.User;

//用户接口
public interface UserDao {
	public User getUserByUserName(String uName);

}
