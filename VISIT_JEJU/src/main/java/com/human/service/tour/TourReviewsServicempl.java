package com.human.service.tour;

import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.tour.TourReviewsDao;
import com.human.dto.tour.TourReviewsDto;

@Service
public class TourReviewsServicempl implements TourReviewsService {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insert(TourReviewsDto dto) throws Exception {
		TourReviewsDao dao=sqlSession.getMapper(TourReviewsDao.class);	
		dao.insert(dto);
	}

	@Override
	public void update(TourReviewsDto dto) throws Exception {
		TourReviewsDao dao=sqlSession.getMapper(TourReviewsDao.class);
		dao.update(dto);
		
	}

	@Override
	public void delete(int t_num) throws Exception {
		TourReviewsDao dao=sqlSession.getMapper(TourReviewsDao.class);
		dao.delete(t_num);
		
	}

	@Override
	public List<TourReviewsDto> listAll() throws Exception {
		TourReviewsDao dao=sqlSession.getMapper(TourReviewsDao.class);
		List<TourReviewsDto> dtos=dao.listAll();
		return dtos;
	}

}
