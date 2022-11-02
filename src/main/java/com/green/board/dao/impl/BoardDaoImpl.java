package com.green.board.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.board.dao.BoardDao;
import com.green.board.vo.BoardVo;

@Repository("boardDao")
public class BoardDaoImpl implements BoardDao{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<BoardVo> getBoardList(String menu_id) {
		List<BoardVo> boardList = sqlSession.selectList("Board.BoardList",menu_id);
		return boardList;
	}

	@Override
	public void insertBoard(BoardVo boardVo) {
		
		sqlSession.insert("Board.BoardInsert", boardVo);
		
	}

	@Override
	public BoardVo getBoard(int idx) {
		BoardVo boardVo = sqlSession.selectOne("Board.GetBoard",idx);
		return boardVo;
	}

	@Override
	public void deleteBoard(int idx) {
		sqlSession.delete("Board.DeleteBoard",idx);
		
	}

	@Override
	public void boardReadCountUpdate(int idx) {
		sqlSession.update("Board.ReadCountUpdate",idx);		
	}

	@Override
	public void updateBoard(BoardVo boardVo) {
		sqlSession.update("Board.UpdateBoard",boardVo);	
		
	}

}
