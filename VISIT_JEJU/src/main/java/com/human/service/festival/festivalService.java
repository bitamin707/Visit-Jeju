package com.human.service.festival;

import java.util.List;

import com.human.dto.festival.festivalDto;

public interface festivalService {
	public void create (festivalDto dto) throws Exception;
	public festivalDto read(Integer fno) throws Exception;
	public void delete(Integer fno) throws Exception;
	public void update(festivalDto dto) throws Exception;
	public List<festivalDto> listAll() throws Exception;
	
	public int getMaxFno() throws Exception;
}
