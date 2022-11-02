package com.green.menus.service;

import java.util.List;

import com.green.menus.vo.MenuVo;

public interface MenuService {

	List<MenuVo> getMenuList();

	void insertMenu(MenuVo menuVo);

	MenuVo getMenu(String menu_id);

	void insertMenu2(MenuVo menuVo);

	void updateMenu(MenuVo menuVo);

	void deleteMenu(String menu_id);



}







