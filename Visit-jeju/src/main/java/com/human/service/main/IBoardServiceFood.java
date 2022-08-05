package com.human.service.main;

import java.util.List;

import com.human.dto.main.BoardDtoFood;

public interface IBoardServiceFood {
	public BoardDtoFood readFood(int bno) throws Exception;
	public void updateFood(BoardDtoFood dto) throws Exception;
	public List<BoardDtoFood> listAllFood() throws Exception;
}
