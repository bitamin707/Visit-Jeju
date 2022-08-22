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
	public BoardDtoTest springTest(BoardDtoTest dto) throws Exception {
		IBoardDaoTest dao=sqlSession.getMapper(IBoardDaoTest.class);
		BoardDtoTest r=dao.springTest(dto);
		return r;
	}

	@Override
	public BoardDtoTest summerTest(BoardDtoTest dto) throws Exception {
		IBoardDaoTest dao=sqlSession.getMapper(IBoardDaoTest.class);
		BoardDtoTest r=dao.summerTest(dto);
		return r;
	}

	@Override
	public BoardDtoTest autumnTest(BoardDtoTest dto) throws Exception {
		IBoardDaoTest dao=sqlSession.getMapper(IBoardDaoTest.class);
		BoardDtoTest r=dao.autumnTest(dto);
		return r;
	}

	@Override
	public BoardDtoTest winterTest(BoardDtoTest dto) throws Exception {
		IBoardDaoTest dao=sqlSession.getMapper(IBoardDaoTest.class);
		BoardDtoTest r=dao.winterTest(dto);
		return r;
	}

	@Override
	public BoardDtoTest maleTest(BoardDtoTest dto) throws Exception {
		IBoardDaoTest dao=sqlSession.getMapper(IBoardDaoTest.class);
		BoardDtoTest r=dao.maleTest(dto);
		return r;
	}

	@Override
	public BoardDtoTest femaleTest(BoardDtoTest dto) throws Exception {
		IBoardDaoTest dao=sqlSession.getMapper(IBoardDaoTest.class);
		BoardDtoTest r=dao.femaleTest(dto);
		return r;
	}

	@Override
	public List<BoardDtoTest> listAllTest() throws Exception {
		IBoardDaoTest dao=sqlSession.getMapper(IBoardDaoTest.class);
		List<BoardDtoTest> dtos=dao.listAllTest();
		return dtos;
	}

}
