package com.human.service.food;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.food.IBoardDao;
import com.human.dto.food.BoardDto;


@Service
public class IBoardServiceImpl implements IBoardService {
	//sqlSession을 사용하는 이유: 마이바티스와 스프링의 연동
	@Autowired
	private SqlSession sqlSession;
	@Override
	public void create(BoardDto dto) throws Exception {
		IBoardDao dao =sqlSession.getMapper(IBoardDao.class);
		dao.create(dto);
		
	}

	@Override
	public BoardDto read(int bno) throws Exception {
		IBoardDao dao =sqlSession.getMapper(IBoardDao.class);
		BoardDto r=dao.read(bno);
		return r;
	}

	@Override
	public void delete(int bno) throws Exception {
		IBoardDao dao =sqlSession.getMapper(IBoardDao.class);
		dao.delete(bno);
		
	}

	@Override
	public void update(BoardDto dto) throws Exception {
		IBoardDao dao =sqlSession.getMapper(IBoardDao.class);
		dao.update(dto);
		
	}

	@Override
	public List<BoardDto> listAll() throws Exception {
		IBoardDao dao =sqlSession.getMapper(IBoardDao.class);
		List<BoardDto> dtos=dao.listAll();
		return dtos;
	}

	@Override
	public void likecreate(BoardDto dto) throws Exception {
		IBoardDao dao =sqlSession.getMapper(IBoardDao.class);
		dao.likecreate(dto);
		
	}

}
