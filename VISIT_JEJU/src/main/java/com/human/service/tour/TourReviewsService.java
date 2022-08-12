package com.human.service.tour;

import java.util.List;

import com.human.dto.tour.TourReviewsDto;

public interface TourReviewsService {
	
	public void insert(TourReviewsDto dto) throws Exception;
	public void update(TourReviewsDto dto) throws Exception;
	public void delete(int t_num) throws Exception;
	public List<TourReviewsDto> listAll() throws Exception; 
}
