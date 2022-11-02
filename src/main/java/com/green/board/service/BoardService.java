package com.green.board.service;

import java.util.List;

import com.green.board.vo.BoardVo;

public interface BoardService {

	List<BoardVo> getBoardList(String menu_id);

	void insertBoard(BoardVo boardVo);

	BoardVo getBoardList(int idx);

	void deleteBoard(int idx);

	void boardContUpdate(int idx);

	void updateBoard(BoardVo boardVo);

}
