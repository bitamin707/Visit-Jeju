package com.human.service.tour;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.tour.tourDao;
import com.human.dto.tour.tourDto;

@Service
public class tourServicempl implements tourService{
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void create(tourDto dto) throws Exception {
		tourDao dao=sqlSession.getMapper(tourDao.class);
		dao.create(dto);		
	}

	@Override
	public tourDto read(int tno) throws Exception {
		tourDao dao=sqlSession.getMapper(tourDao.class);
		return dao.read(tno);
	}

	@Override
	public void update(tourDto dto) throws Exception {
		tourDao dao=sqlSession.getMapper(tourDao.class);
		return dao.read(tno);
	}

	@Override
	public void delete(int tno) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<tourDto> listAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
