package com.human.dao.main;

import java.util.List;

import com.human.dto.main.BoardDtoFoodBest;
public interface IBoardDaoFoodBest {
	public void updateFoodBest(BoardDtoFoodBest dto) throws Exception;
	public List<BoardDtoFoodBest> listAllFoodBest() throws Exception;
}
