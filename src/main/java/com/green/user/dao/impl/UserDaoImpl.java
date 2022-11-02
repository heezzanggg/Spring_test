package com.green.user.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.user.dao.UserDao;
import com.green.user.vo.UserVo;

@Repository("userDao")
public class UserDaoImpl implements UserDao {

	@Autowired
	private SqlSession  sqlSession;
	
	@Override
	public List<UserVo> getUserList() {
		List<UserVo> userList = sqlSession.selectList("User.UserList"); 
		return userList;
	}

	@Override
	public void insertUser(UserVo user) {
		
		sqlSession.insert("User.UserInsert", user);
		
	}

	@Override
	public UserVo getUser(String userid) {
		UserVo  vo = sqlSession.selectOne("User.User", userid );
		return  vo;
	}

	@Override
	public void updateUser(UserVo user) {
		
		sqlSession.update("User.UserUpdate", user);
		
	}

	@Override
	public void deleteUser(UserVo user) {
		
		sqlSession.delete("User.UserDelete", user);
		
	}

}














