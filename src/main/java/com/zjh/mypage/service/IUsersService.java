package com.zjh.mypage.service;

import com.zjh.mypage.pojo.Users;

/**
 * 用户信息接口
 * @author Thunisoft
 *
 */
public interface IUsersService {
	public Users validateUserInfo(String useraccord,String password);

}
