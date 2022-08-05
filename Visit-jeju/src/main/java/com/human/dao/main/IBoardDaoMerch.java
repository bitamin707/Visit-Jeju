package com.human.dao.main;

import java.util.List;

import com.human.dto.main.BoardDtoMerch;

public interface IBoardDaoMerch {
	public BoardDtoMerch readMerch(int bno) throws Exception;
	public void updateMerch(BoardDtoMerch dto) throws Exception;
	public List<BoardDtoMerch> listAllMerch() throws Exception;
}
