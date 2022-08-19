package com.human.service.festival;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.festival.festivalDao;
import com.human.dto.festival.festivalDto;

@Service
public class festivalServiceIMP implements festivalService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void create(festivalDto dto) throws Exception {
		festivalDao dao = sqlSession.getMapper(festivalDao.class);
		dao.create(dto);
	}

	@Override
	public festivalDto read(Integer fno) throws Exception {
		festivalDao dao = sqlSession.getMapper(festivalDao.class);
		festivalDto dto = dao.read(fno);
		return dto;
	}

	@Override
	public void delete(Integer fno) throws Exception {
		festivalDao dao = sqlSession.getMapper(festivalDao.class);
		dao.delete(fno);
	}

	@Override
	public void update(festivalDto dto) throws Exception {
		festivalDao dao = sqlSession.getMapper(festivalDao.class);
		dao.update(dto);
	}

	@Override
	public List<festivalDto> listAll() throws Exception {
		festivalDao dao = sqlSession.getMapper(festivalDao.class);
		List<festivalDto> dtos = dao.listAll();
		return dtos;
	}

	@Override
	public int getMaxFno() throws Exception {
		festivalDao dao = sqlSession.getMapper(festivalDao.class);
		return dao.getMaxFno();
	}
}
