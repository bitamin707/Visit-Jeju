package com.human.service.festival;

import com.human.dto.festival.festival_detailDto;

public interface festival_detailService {
	public void create (festival_detailDto dto) throws Exception;
	public festival_detailDto read(Integer fno) throws Exception;
	public void delete(Integer fno) throws Exception;
	public void update(festival_detailDto dto) throws Exception;
	
	public festival_detailDto getFno(int fno) throws Exception;
	public void plusReviewCount(festival_detailDto dto) throws Exception;
	public void countReview(festival_detailDto dto) throws Exception;
}
