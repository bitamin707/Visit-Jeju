package com.human.dao.tour;

import java.util.List;

import com.human.dto.tour.tourDto;

public interface tourDao {

	public void create(tourDto dto) throws Exception;
	public tourDto read(int tno) throws Exception;
	public void update(tourDto dto) throws Exception;
	public void delete(int tno) throws Exception;
	public List<tourDto> listAll() throws Exception;
	
	
}
