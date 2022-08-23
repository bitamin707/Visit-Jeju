package com.human.service.festival;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.festival.festival_reviewDao;
import com.human.dto.festival.festival_reviewDto;

@Service
public class festival_reviewServiceIMP implements festival_reviewService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void create(festival_reviewDto dto) throws Exception {
		festival_reviewDao dao = sqlSession.getMapper(festival_reviewDao.class);
		dao.create(dto);
	}

	@Override
	public festival_reviewDto read(String userid) throws Exception {
		return null;
	}

	@Override
	public void delete(festival_reviewDto dto) throws Exception {
		festival_reviewDao dao = sqlSession.getMapper(festival_reviewDao.class);
		dao.delete(dto);
	}

	@Override
	public void update(festival_reviewDto dto) throws Exception {
		festival_reviewDao dao = sqlSession.getMapper(festival_reviewDao.class);
		dao.update(dto);
	}

	@Override
	public List<festival_reviewDto> listAll(int fno) throws Exception {
		festival_reviewDao dao = sqlSession.getMapper(festival_reviewDao.class);
		List<festival_reviewDto> dtos = dao.listAll(fno);
		return dtos;
	}
}
