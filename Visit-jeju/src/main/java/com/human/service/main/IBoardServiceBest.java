package com.human.service.main;

import java.util.List;

import com.human.dto.main.BoardDtoBest;

public interface IBoardServiceBest {
	public BoardDtoBest read(int bno) throws Exception;
	public void update(BoardDtoBest dto) throws Exception;
	public List<BoardDtoBest> listAll() throws Exception;
}
