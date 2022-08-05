package com.human.dao.food;

import java.util.List;

import com.human.dto.food.FoodDto;

public interface FoodDao {
	public List<FoodDto> listAll() throws Exception; 
}
