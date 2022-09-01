package com.human.service.tour;

import java.util.List;

import com.human.dto.tour.TourBoardDto;

public interface ITourBoardService {
	public void create(TourBoardDto dto) throws Exception;
	public TourBoardDto read(int bno) throws Exception;
	public void delete(int bno) throws Exception;
	public void update(TourBoardDto dto) throws Exception;
	public List<TourBoardDto> listAll() throws Exception;
	
}