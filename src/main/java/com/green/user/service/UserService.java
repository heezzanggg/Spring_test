package com.green.user.service;

import java.util.List;

import com.green.user.vo.UserVo;

public interface UserService {

	List<UserVo> getUserList();

	void insertUser(UserVo user);

	UserVo getUser(String userid);

	void updateUser(UserVo user);

	void delete(UserVo user);

}
