package com.zjh.mypage.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zjh.mypage.mapper.IUsersMapper;
import com.zjh.mypage.pojo.Users;
import com.zjh.mypage.service.IUsersService;
@Service
public class UsersServiceImpl implements IUsersService{

	@Autowired
	private IUsersMapper userMapper;
	//验证用户登录
	@Override
	public Users validateUserInfo(String useraccord, String password) {
		return userMapper.validateUserInfo(useraccord, password);
	}
	

}
