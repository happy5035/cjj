package com.yuan.lee.controller.system;

import java.awt.List;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yuan.lee.common.Page;
import com.yuan.lee.controller.TestController;
import com.yuan.lee.entity.Manager;
import com.yuan.lee.entity.Student;
import com.yuan.lee.service.system.StudentService;
import com.yuan.lee.util.Identities;



@Controller
@RequestMapping(value="/New")
public class New {
	

	
	
	
	
	
	Logger logger = LoggerFactory.getLogger(TestController.class);
	@Autowired
	StudentService studentservice;
	@Autowired
	Student student;
	
	
	@RequestMapping(value="/New",method=RequestMethod.GET)
	public  String table()
	{
		return "system/New";
	}
	
	
	@RequestMapping(value="/info1")
	public String info(){	
		System.out.println("======================");
		return "/system/fm";
	}
	
	@ResponseBody
	@RequestMapping(value="/list1")
	public Map<String, Object> list(Page page){
		try {
//			System.out.println("\n----------------"+page.getParams().get("name")+"------------\n");
			System.out.println(page.toString());
			return studentservice.pagedByParams(page);
		} catch (Exception e) {
			logger.error(e.getMessage());
			return null;
		}
		
	}

	
	@ResponseBody
	@RequestMapping(value="/insert1")
	public Map<String, Object> add(Student student){
		Map<String, Object> result = new HashMap<String, Object>();
		try {
			
//			student.setFirstname(Identities.uuid2());
			studentservice.insert(student);			
			result.put("successMsg", "添加成功！");
		} catch (Exception e) {
			logger.error(e.getMessage());
			result.put("errorMsg", "出现错误，请联系管理员！");
		}
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/{firstname}/delete1")
	public Map<String, Object> delete(@PathVariable("firstname") String firstname){
		Map<String, Object> result = new HashMap<String, Object>();
		try {
		 	int row = studentservice.deleteByPrimaryKey(firstname);
		 	if (row == 1) {
				result.put("successMsg", "删除成功！");
			}else {
				result.put("errorMsg", "出现错误，请联系管理员！");
			}
		} catch (Exception e) {
			logger.error(e.getMessage());
			result.put("errorMsg", "出现错误，请联系管理员！");
		}
		return result;
	}
	
	
	
	@ResponseBody
	@RequestMapping(value="/{firstname}/edit1",method=RequestMethod.GET)
	public Student edit(@PathVariable("firstname") String firstname){
		try {
			System.out.println(firstname+"===============");
		 	student =studentservice .selectByPrimaryKey(firstname);			
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return student;
	}
	
	
	
	
	@ResponseBody
	@RequestMapping(value="/update1", method=RequestMethod.POST)
	public Map<String, Object> update(Student student){
		Map<String, Object> result = new HashMap<String, Object>();
		try {
			int row = studentservice.updateByPrimaryKey(student);
			if (row == 1) {
				result.put("successMsg", "修改成功！");
			}else {
				result.put("errorMsg", "出现错误，请联系管理员！");
			}			
		} catch (Exception e) {
			logger.error(e.getMessage());
			result.put("errorMsg", "出现错误，请联系管理员！");
		}
		return result;
	}

}