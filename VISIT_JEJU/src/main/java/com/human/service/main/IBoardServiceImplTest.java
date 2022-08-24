package com.human.service.main;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.main.IBoardDaoTest;
import com.human.dto.main.BoardDtoTest;

@Service
public class IBoardServiceImplTest implements IBoardServiceTest {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void createTest(BoardDtoTest dto) throws Exception {
		IBoardDaoTest dao=sqlSession.getMapper(IBoardDaoTest.class);
		dao.createTest(dto);
	}

	

	@Override
	public List<BoardDtoTest> listAllTest() throws Exception {
		IBoardDaoTest dao=sqlSession.getMapper(IBoardDaoTest.class);
		List<BoardDtoTest> dtos=dao.listAllTest();
		return dtos;
	}



	@Override
	public List<BoardDtoTest> readTest(String title) throws Exception {
		IBoardDaoTest dao=sqlSession.getMapper(IBoardDaoTest.class);
		List<BoardDtoTest> dtos=dao.readTest(title);
		return dtos;
	}

}
