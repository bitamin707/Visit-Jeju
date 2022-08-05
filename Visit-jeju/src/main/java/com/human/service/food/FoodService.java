package com.human.service.food;

import java.util.List;

import com.human.dto.food.FoodDto;

public interface FoodService {
	public List<FoodDto> listAll() throws Exception; 
}
