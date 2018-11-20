package com.zjh.mypage.mapper;

import com.zjh.mypage.pojo.Users;

/**
 * 用户dao接口类
 * @author Thunisoft
 *
 */
public interface IUsersMapper {
	//用户登录验证
	public Users validateUserInfo(String useraccord,String password);

}
