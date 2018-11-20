package com.zjh.mypage.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zjh.mypage.pojo.Users;
import com.zjh.mypage.service.IUsersService;

@Controller
public class UserController {
	@Autowired
	private IUsersService usersService;
	@RequestMapping("/inputInfo")
	public String loginUserInfo(String useraccord,String password,HttpServletRequest request,Model model)
	{
		System.out.println("获取前台的数据为："+useraccord+"、"+password);
		System.out.println("开始调用方法");
		Users userinfo=usersService.validateUserInfo(useraccord, password);
		if(userinfo==null)
		{
			return "/error.jsp";
		}
		request.setAttribute("userInfo", userinfo);
		return "/webpage/main.html";
	}

}
