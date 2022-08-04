package com.human.service.acco;

import java.util.List;

import com.human.dto.acco.AccoReviewDto;




public interface IAccoReviewService {
	public void create(AccoReviewDto dto) throws Exception;
	public AccoReviewDto read(String ano) throws Exception;
	public void delete(String ano) throws Exception;
	public void update(AccoReviewDto dto) throws Exception;
	public List<AccoReviewDto> listAll() throws Exception;
	
}