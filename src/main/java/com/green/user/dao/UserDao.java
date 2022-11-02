package com.green.user.dao;

import java.util.List;

import com.green.user.vo.UserVo;

public interface UserDao {

	List<UserVo> getUserList();

	void insertUser(UserVo user);

	UserVo getUser(String userid);

	void updateUser(UserVo user);

	void deleteUser(UserVo user);

}
