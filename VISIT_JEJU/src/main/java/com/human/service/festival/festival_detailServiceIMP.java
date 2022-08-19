package com.human.service.festival;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.festival.festival_detailDao;
import com.human.dto.festival.festival_detailDto;

@Service
public class festival_detailServiceIMP implements festival_detailService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void create(festival_detailDto dto) throws Exception {
		festival_detailDao dao = sqlSession.getMapper(festival_detailDao.class);
		dao.create(dto);
	}

	@Override
	public festival_detailDto read(Integer fno) throws Exception {
		festival_detailDao dao = sqlSession.getMapper(festival_detailDao.class);
		festival_detailDto dto = dao.read(fno);
		return dto;
	}

	@Override
	public void delete(Integer fno) throws Exception {
		festival_detailDao dao = sqlSession.getMapper(festival_detailDao.class);
		dao.delete(fno);
	}

	@Override
	public void update(festival_detailDto dto) throws Exception {
		festival_detailDao dao = sqlSession.getMapper(festival_detailDao.class);
		dao.update(dto);
	}
}
