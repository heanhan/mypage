package com.zjh.mypage.test;

import java.util.UUID;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zjh.mypage.mapper.IEmployeeMapper;
import com.zjh.mypage.service.IDepartmentService;
import com.zjh.mypage.service.IEmployeeService;

/**
 * 测试类
 * @author Thunisoft
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring-applicationContext.xml"})
public class TestController_1 {
	@Autowired
	private IEmployeeService employeeService; 
	@Autowired
	private IDepartmentService departmentService;
	@Autowired
	private SqlSession sqlSession;
	@Test
	public void testEmployee()
	{
		int i=-1;
//		i=departmentService.addDepartmentInfo("临时部门");
//		进行单个插入操作
//		employeeService.addEmployeeInfo("居十方","男","jushifang@qq.com",1);
//		批量操作，生成10000条测试数据
		IEmployeeMapper employeeBatch=sqlSession.getMapper(IEmployeeMapper.class);
		for(int n=0;n<10000;n++)
		{
			String uid=UUID.randomUUID().toString().substring(0,5)+n;
			employeeBatch.addBatchEmployeeInfo(uid, "男", uid+"@qq.com", 2);
			
		}
			System.out.println("写入信息成功！");
	}

}
