package com.human.dao.tour;

import java.util.List;

import com.human.dto.tour.TourReviewsDto;

public interface TourReviewsDao {
	
	public void insert(TourReviewsDto dto) throws Exception;
	public void update(TourReviewsDto dto) throws Exception;
	public void delete(int t_num) throws Exception;
	public List<TourReviewsDto> listAll() throws Exception; 
}
