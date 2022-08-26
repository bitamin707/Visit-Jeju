package com.human.service.acco;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.acco.IAccoReviewDao;
import com.human.dto.acco.AccoReviewDto;

@Service
public class AccoReviewServiceImpl implements IAccoReviewService {
	@Autowired
	private SqlSession sqlSession;
	@Override
	public void create(AccoReviewDto dto) throws Exception {
		// TODO Auto-generated method stub
		IAccoReviewDao dao=sqlSession.getMapper(IAccoReviewDao.class);
		dao.create(dto);
	}

	@Override
	public AccoReviewDto read(int ano) throws Exception {
		// TODO Auto-generated method stub
		IAccoReviewDao dao=sqlSession.getMapper(IAccoReviewDao.class);
		
		return dao.read(ano);
	}

	@Override
	public void delete(int ano) throws Exception {
		// TODO Auto-generated method stub
		IAccoReviewDao dao=sqlSession.getMapper(IAccoReviewDao.class);
		dao.delete(ano);
	}

	@Override
	public void update(AccoReviewDto dto) throws Exception {
		// TODO Auto-generated method stub
		IAccoReviewDao dao=sqlSession.getMapper(IAccoReviewDao.class);
		dao.update(dto);
	}

	@Override
	public List<AccoReviewDto> listAll() throws Exception {
		// TODO Auto-generated method stub
		IAccoReviewDao dao=sqlSession.getMapper(IAccoReviewDao.class);
		return dao.listAll();
	}

	@Override
	public List<AccoReviewDto> readid(int acco_id) throws Exception {
		// TODO Auto-generated method stub
		IAccoReviewDao dao=sqlSession.getMapper(IAccoReviewDao.class);
		return dao.readid(acco_id);
	}
	

}
