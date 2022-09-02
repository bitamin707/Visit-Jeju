package com.human.service.shopping;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.shopping.IBoardDaoRate;
import com.human.dto.shopping.BoardDtoRate;


@Service
public class BoardServiceRateImpl implements IBoardServiceRate {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<BoardDtoRate> listAll() throws Exception {
		IBoardDaoRate dao=sqlSession.getMapper(IBoardDaoRate.class);
		List<BoardDtoRate> dtos=dao.listAll();
		return dtos;
	}

}
