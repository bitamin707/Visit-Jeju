package com.human.service.main;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.main.IBoardDaoFood;
import com.human.dto.main.BoardDtoFood;

@Service
public class IBoardServiceImplFood implements IBoardServiceFood {
	@Autowired
	private SqlSession sqlSession;
	@Override
	public BoardDtoFood readFood(int bno) throws Exception {
		IBoardDaoFood dao=sqlSession.getMapper(IBoardDaoFood.class);
		BoardDtoFood r = dao.readFood(bno);
		return r;
	}
	@Override
	public void updateFood(BoardDtoFood dto) throws Exception {
		IBoardDaoFood dao=sqlSession.getMapper(IBoardDaoFood.class);
		dao.updateFood(dto);
	}
	@Override
	public List<BoardDtoFood> listAllFood() throws Exception {
		IBoardDaoFood dao=sqlSession.getMapper(IBoardDaoFood.class);
		List<BoardDtoFood> dtos=dao.listAllFood();
		return dtos;
	}
}
