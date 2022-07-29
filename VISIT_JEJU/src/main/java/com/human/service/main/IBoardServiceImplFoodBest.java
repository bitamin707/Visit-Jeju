package com.human.service.main;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.main.IBoardDaoFoodBest;
import com.human.dto.main.BoardDtoFoodBest;

@Service
public class IBoardServiceImplFoodBest implements IBoardServiceFoodBest {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void updateFoodBest(BoardDtoFoodBest dto) throws Exception {
		IBoardDaoFoodBest dao=sqlSession.getMapper(IBoardDaoFoodBest.class);
		dao.updateFoodBest(dto);
	}

	@Override
	public List<BoardDtoFoodBest> listAllFoodBest() throws Exception {
		IBoardDaoFoodBest dao=sqlSession.getMapper(IBoardDaoFoodBest.class);
		List<BoardDtoFoodBest> dtos=dao.listAllFoodBest();
		return dtos;
	}

}
