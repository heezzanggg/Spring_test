package com.green.board.dao;

import java.util.List;

import com.green.board.vo.BoardVo;

public interface BoardDao {

	List<BoardVo> getBoardList(String menu_id);

	void insertBoard(BoardVo boardVo);

	BoardVo getBoard(int idx);

	void deleteBoard(int idx);

	void boardReadCountUpdate(int idx);

	void updateBoard(BoardVo boardVo);

}
