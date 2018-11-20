package com.zjh.mypage.pojo;

import java.io.Serializable;

/**
 * 用户的实体类
 * @author Thunisoft
 *
 */
public class Users implements Serializable,Comparable<Users>{
	/**
	 * 
	 */
	private static final long serialVersionUID = -1908547353050839197L;
	private int userid;//用户的id  主键自增
	private String useraccord;//用户的账号
	private String realname;//真实姓名
	private String password;//密码
	private String sender;//性别
	private double height;//身高
	private String desc;//个人简介
	/**
	 * 无参构造函数
	 */
	public Users() {
		super();
	}
	/**
	 * 缺少userdi 的构造函数
	 * @param useraccord
	 * @param realname
	 * @param password
	 * @param sender
	 * @param height
	 * @param desc
	 */
	public Users(String useraccord, String realname, String password, String sender, double height, String desc) {
		super();
		this.useraccord = useraccord;
		this.realname = realname;
		this.password = password;
		this.sender = sender;
		this.height = height;
		this.desc = desc;
	}
	/**
	 * 全量参数构造函数
	 * @param userid
	 * @param useraccord
	 * @param realname
	 * @param password
	 * @param sender
	 * @param height
	 * @param desc
	 */
	public Users(int userid, String useraccord, String realname, String password, String sender, double height,
			String desc) {
		super();
		this.userid = userid;
		this.useraccord = useraccord;
		this.realname = realname;
		this.password = password;
		this.sender = sender;
		this.height = height;
		this.desc = desc;
	}
	/**
	 * getter setter 方法
	 * @return
	 */
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUseraccord() {
		return useraccord;
	}
	public void setUseraccord(String useraccord) {
		this.useraccord = useraccord;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public double getHeight() {
		return height;
	}
	public void setHeight(double height) {
		this.height = height;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	//同String方法
	@Override
	public String toString() {
		return "Users [userid=" + userid + ", useraccord=" + useraccord + ", realname=" + realname + ", password="
				+ password + ", sender=" + sender + ", height=" + height + ", desc=" + desc + "]";
	}
	@Override
	public int compareTo(Users arg0) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
