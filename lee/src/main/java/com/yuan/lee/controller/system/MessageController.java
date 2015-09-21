package com.yuan.lee.controller.system;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

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
import com.yuan.lee.entity.Message;
import com.yuan.lee.entity.Student;
import com.yuan.lee.service.system.MessageService;
import com.yuan.lee.service.system.StudentService;
import com.yuan.lee.util.Identities;



@Controller
@RequestMapping(value="/message")
public class MessageController {
	Logger logger = LoggerFactory.getLogger(TestController.class);
	@Autowired
	MessageService messageService;
	@Autowired
	Message message;
	
	
	/*@RequestMapping(value="/New",method=RequestMethod.GET)
	public  String table()
	{
		return "system/New";
	}
	*/
	
	@RequestMapping(value="/info2")
	public String info2(){	
		System.out.println("======================");
		return "/system/fm2";
	}
	
	@ResponseBody
	@RequestMapping(value="/list2")
	public Map<String, Object> list(Page page){
		try {
			System.out.println("\n----------------------------\n");
			 page.getParams().put("firstname1",page.getParams().get("firstname") ) ;
				System.out.println(page.toString());
			 page.getParams().remove("firstname");
			System.out.println(page.toString());
		
			return messageService.pagedByParams(page);
			
		} catch (Exception e) {
			logger.error(e.getMessage());
			return null;
		}
		}
		
		@ResponseBody
		@RequestMapping(value="/insert2")
		public Map<String, Object> add(Message message){
			Map<String, Object> result = new HashMap<String, Object>();
			try {
				
//				student.setFirstname(Identities.uuid2());
				messageService.insert(message);			
				result.put("successMsg", "添加成功！");
			} catch (Exception e) {
				logger.error(e.getMessage());
				result.put("errorMsg", "出现错误，请联系管理员！");
			}
			return result;
		}
		
		
		@ResponseBody
		@RequestMapping(value="/{country}/delete2")
		public Map<String, Object> delete(@PathVariable("country") String country){
			Map<String, Object> result = new HashMap<String, Object>();
			try {
			 	int row = messageService.deleteByPrimaryKey(country);
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
		@RequestMapping(value="/{country}/edit2")
		public Message edit(@PathVariable("country")String country){
			try {
			 	message = messageService.selectByPrimaryKey(country);			
			} catch (Exception e) {
				logger.error(e.getMessage());
			}
			return message;
		}
		
		@ResponseBody
		@RequestMapping(value="/update2", method=RequestMethod.POST)
		public Map<String, Object> update(Message message){
			Map<String, Object> result = new HashMap<String, Object>();
			try {
				int row = messageService.updateByPrimaryKey(message);
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
		
		
		@ResponseBody
		@RequestMapping(value="/{country}/view2")
		public Message view(@PathVariable("country")String country){
			try {
			 	message = messageService.selectByPrimaryKey(country);			
			} catch (Exception e) {
				logger.error(e.getMessage());
			}
			return message;
		}
	}

	
	
	
	
