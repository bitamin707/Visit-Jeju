package com.human.service.tour;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.tour.ITourBoardDao;
import com.human.dto.tour.TourBoardDto;
@Service
public class TourBoardServiceImpl implements ITourBoardService {
	
	@Autowired
	private SqlSession sqlSession;
	@Override
	public void create(TourBoardDto dto) throws Exception {
		ITourBoardDao dao=sqlSession.getMapper(ITourBoardDao.class);
		dao.create(dto);
	}

	@Override
	public TourBoardDto read(int bno) throws Exception {
		ITourBoardDao dao=sqlSession.getMapper(ITourBoardDao.class);
		TourBoardDto r=dao.read(bno);
		return r;
	}

	@Override
	public void delete(int bno) throws Exception {
		ITourBoardDao dao=sqlSession.getMapper(ITourBoardDao.class);
		dao.delete(bno);
		
	}

	@Override
	public void update(TourBoardDto dto) throws Exception {
		ITourBoardDao dao=sqlSession.getMapper(ITourBoardDao.class);
		dao.update(dto);
		
	}

	@Override
	public List<TourBoardDto> listAll() throws Exception {
		ITourBoardDao dao=sqlSession.getMapper(ITourBoardDao.class);
		List<TourBoardDto> dtos=dao.listAll();
		return dtos;
	}

}
