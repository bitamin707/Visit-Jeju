package com.human.service.food;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.food.FoodDao;
import com.human.dto.food.FoodDto;

@Service
public class FoodServiceImpl implements FoodService {
	
	@Autowired
	private SqlSession sqlSession;
	@Override
	public List<FoodDto> listAll() throws Exception {
		FoodDao dao =sqlSession.getMapper(FoodDao.class);
		List<FoodDto> dtos =dao.listAll();
		return dtos;
	}
	
}
