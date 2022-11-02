package com.green.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.user.service.UserService;
import com.green.user.vo.UserVo;

@Controller
public class HomeController {

	@Autowired
	private UserService  userService; 
	
	@RequestMapping("/")
	public  String  home() {
		return "home";   // /WEB-INF/views/home.jsp
	}
	
	//@RequestMapping( method = RequestMethod.GET, path="/List") // 
	@GetMapping("/List")
	public  String  list( Model model  ) {
		List<UserVo> userList = userService.getUserList();
		System.out.println( "homeController(userList):" + userList );
		model.addAttribute("userList", userList);
		
		return "list";
	}
	
	@RequestMapping("/WriteForm")
	public  String  writeForm() {		
		return "write";		
	} 
	
	@RequestMapping("/Write")
	public  String  write( UserVo user, Model model ) {
		
		userService.insertUser( user );
		
	//	List<UserVo> userList = userService.getUserList();
	//	model.addAttribute("userList", userList);		
	//	return "list";
		
	//	return "/List";   // /WEB-INF/views//List.jsp : 오류
		return "redirect:/List";  
	}
	
	// <a href="/View?userid=SEA3">바다3</a>
	@RequestMapping("/View")
	public  String   view(String userid, Model model) {
		//UserVo   vo  = new UserVo("SEA3", "1234", "바다3", "2020-10-09");
		UserVo  vo = userService.getUser( userid );
		model.addAttribute("uid", userid);
		model.addAttribute("vo", vo);
		return "view";
	}
	
	// 수정
	// http://localhost:8080/UpdateForm?userid=ironman
	@RequestMapping("/UpdateForm")
	public   String   updateForm(String userid, Model model ) {
		// 넘어온 정보롤 db 에서 새로 조회해서 넘겨준다
		
		UserVo  user = userService.getUser( userid );
		model.addAttribute( "user", user );
		
		return "update";
	}
	
	@RequestMapping("/Update")
	public  String   update(UserVo  user) {
		
		userService.updateUser( user );
				
		return   "redirect:/List";
	}
	
	// 삭제
	@RequestMapping("/Delete")
	public  String   delete(UserVo  user) {
		
		userService.delete(user);
		
		return   "redirect:/List";
		
	}
	
}





















