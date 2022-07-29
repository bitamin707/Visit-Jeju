package com.human.service.main;

import java.util.List;

import com.human.dto.main.BoardDtoFoodBest;
public interface IBoardServiceFoodBest {
	public void updateFoodBest(BoardDtoFoodBest dto) throws Exception;
	public List<BoardDtoFoodBest> listAllFoodBest() throws Exception;
}
