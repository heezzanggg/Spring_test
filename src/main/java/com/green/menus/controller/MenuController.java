package com.green.menus.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.green.menus.service.MenuService;
import com.green.menus.vo.MenuVo;

@Controller
@RequestMapping("/Menu")
public class MenuController {

	@Autowired
	private MenuService menuService;
	
	/*
	// /Menu/List 
	@RequestMapping("/List")  
	public  String    list(Model model) {		
		List<MenuVo> menuList  = menuService.getMenuList();		
		model.addAttribute("menuList", menuList);		
		return "menus/list";    // /WEB-INF/views/menus/list.jsp
	}
	*/
	@RequestMapping("/List")
	public  ModelAndView    list() {		
		
		List<MenuVo> menuList  = menuService.getMenuList();	
		
		ModelAndView  mv = new ModelAndView();
		mv.setViewName( "menus/list"  );
		mv.addObject("menuList", menuList);
		return mv;    // /WEB-INF/views/menus/list.jsp
	}
	
	// /Menu/WriteForm 
	@RequestMapping("/WriteForm")
	public  String  writeForm() {
		return "menus/write";
	}
	
	// /Menu/Write
	@RequestMapping("/Write")
	public  String  write( MenuVo  menuVo ) {
		
		menuService.insertMenu( menuVo );
		return "redirect:/Menu/List";
		
	}
	
	// /Menu/WriteForm 
	@RequestMapping("/WriteForm2")
	public  String  writeForm2() {
		return "menus/write2";
	}
	
	// /Menu/Write
	@RequestMapping("/Write2")
	public  String  write2( MenuVo  menuVo ) {
		
		menuService.insertMenu2( menuVo );
		return "redirect:/Menu/List";
		
	}
	
	// /Menus/UpdateForm?menu_id=MENU06 
	@RequestMapping("/UpdateForm")
	public  String  updateForm(  String menu_id, Model model  ) {	
		System.out.println("MenuController updateForm menu_id:" + menu_id);
		// 넘어온 menu_id 롤 조회하여 menuVo 로 돌려받는다
		MenuVo   menuVo = menuService.getMenu( menu_id );
		
		model.addAttribute("menuVo", menuVo );
		
//		model.addAttribute("menu_id",   menuVo.getMenu_id());
//		model.addAttribute("menu_name", menuVo.getMenu_name());
//		model.addAttribute("menu_seq",  menuVo.getMenu_seq());
		// 해당 menu_id 로 자료를 조회해서 menus/update.jsp 로 전달 
		
		return "menus/update";
	}
	
	@RequestMapping("/Update")
	public  String   update( MenuVo menuVo  ) {
		
		menuService.updateMenu( menuVo );
		
		return  "redirect:/Menu/List";
	}
	
	//http://localhost:8080/Menu?Delete?menu_id=MENU08
	@RequestMapping("/Delete")
	public  String   delete(String menu_id  ) {
		
		menuService.deleteMenu(menu_id);
		
		return  "redirect:/Menu/List";
	}
	
}















