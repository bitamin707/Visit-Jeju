package com.human.dao.festival;

import java.util.List;

import com.human.dto.festival.festival_reviewDto;

public interface festival_reviewDao {
	public void create (festival_reviewDto dto) throws Exception;
	public festival_reviewDto read(Integer fno) throws Exception;
	public void delete(Integer fno) throws Exception;
	public void update(festival_reviewDto dto) throws Exception;
	public List<festival_reviewDto> listAll() throws Exception;

}
