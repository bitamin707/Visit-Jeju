package com.human.dao.acco;

import java.util.List;

import com.human.dto.acco.AccoReviewDto;




public interface IAccoReviewDao {
	public void create(AccoReviewDto dto) throws Exception;
	public AccoReviewDto read(int ano) throws Exception;
	public void delete(int ano) throws Exception;
	public void update(AccoReviewDto dto) throws Exception;
	public List<AccoReviewDto> listAll() throws Exception;
	
}
