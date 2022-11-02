package com.green.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.user.dao.UserDao;
import com.green.user.service.UserService;
import com.green.user.vo.UserVo;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	@Override
	public List<UserVo> getUserList() {
		 List<UserVo>  userList = userDao.getUserList();
		 return userList;
	}

	@Override
	public void insertUser(UserVo user) {
		
		userDao.insertUser( user );
		
	}

	@Override
	public UserVo getUser(String userid) {
		UserVo  vo = userDao.getUser( userid );
		return  vo;
	}

	@Override
	public void updateUser(UserVo user) {
		
		userDao.updateUser( user );
		
	}

	@Override
	public void delete(UserVo user) {
		
		userDao.deleteUser( user );
		
	}

}










