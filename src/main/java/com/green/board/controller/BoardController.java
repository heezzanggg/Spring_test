package com.green.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.green.board.service.BoardService;
import com.green.board.vo.BoardVo;
import com.green.menus.service.MenuService;
import com.green.menus.vo.MenuVo;

@Controller
@RequestMapping("/Board")
public class BoardController {
	
	@Autowired
	private MenuService menuService;
	
	@Autowired
	private BoardService boardService;

	//<a href="/Board/List?menu_id=MENU01">
	@RequestMapping("/List")
	public ModelAndView list(String menu_id) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/list");

		//메뉴목록
		List<MenuVo> menuList= menuService.getMenuList();
		mv.addObject("menuList",menuList);
		
		//게시물 목록 조회
		List<BoardVo> boardList= boardService.getBoardList(menu_id);
		//System.out.println("cont list boardlist:" + boardList);
		mv.addObject("boardList",boardList);
		
		mv.addObject("menu_id",menu_id);
		return mv;	
	}
	
	// /Board/WriteForm
	@RequestMapping("/WriteForm")
	public ModelAndView writeFrom(String menu_id) {
		
		//메뉴목록 조회
		List<MenuVo> menuList= menuService.getMenuList();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("menu_id",menu_id);
		mv.addObject("menuList",menuList);

		mv.setViewName("board/write");
		return mv;
		
	}
//  /Board/Write
	@RequestMapping("/Write")
	public  ModelAndView   write(
//			String menu_id, String title, String writer, String cont
			int num, BoardVo boardVo
			) {
		
		// 새글 저장
		boardService.insertBoard( boardVo );
		
		ModelAndView  mv = new ModelAndView();
		mv.setViewName("redirect:/Board/List?menu_id=" + 
		     boardVo.getMenu_id() );		
		return mv;	
	}
	
	// /Board/View?idx=1
	@RequestMapping("/View")
	public ModelAndView view(int idx) {
		
		//메뉴목록 조회
		List<MenuVo> menuList = menuService.getMenuList();
		
		//조회수 증가(board table readcount++)
		boardService.boardContUpdate(idx);
		
		//내용보기를 위한 게시글 조회(idx로)
		BoardVo boardVo = boardService.getBoardList(idx);
		
		// '\n'  -> '<br>'
	    boardVo.setCont( boardVo.getCont().trim().replace("\n", "<br>") );
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("board/view");
		mv.addObject("menuList",menuList);
		mv.addObject("boardVo",boardVo);
			
		return mv;
	}
	// /Board/Delete?menu_id=${boardVo.menu_id}&idx=${boardVo.idx}
	@RequestMapping("/Delete")
	public ModelAndView delete(String menu_id,int idx) {
		
		boardService.deleteBoard(idx);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Board/List?menu_id=" + menu_id );

		return mv;
	}
	
	//Board/UpdateForm?menu_id=${boardVo.menu_id}&idx=${boardVo.idx}
	@RequestMapping("/UpdateForm")
	public ModelAndView updateFrom(String menu_id, int idx) {
		
		//메뉴목록 조회(항상 상단에 있는것)
		List<MenuVo> menuList = menuService.getMenuList();
		
		//수정할 자료 미리 조회
		BoardVo boardVo = boardService.getBoardList(idx);
				
		ModelAndView mv = new ModelAndView();
		mv.addObject("menuList",menuList);
		mv.addObject("board",boardVo);
		
		mv.setViewName("board/update");
		return mv;
	}
	
	// /Board/Update
	@RequestMapping("/Update")
	public ModelAndView update(BoardVo boardVo) {
		
		//수정하기
		boardService.updateBoard(boardVo);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Board/List?menu_id="+boardVo.getMenu_id());
		return mv;
		
	}
	
	
	
}
