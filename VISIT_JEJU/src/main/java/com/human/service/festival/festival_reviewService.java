package com.human.service.festival;

import java.util.List;

import com.human.dto.festival.festival_reviewDto;

public interface festival_reviewService {
	public void create (festival_reviewDto dto) throws Exception;
	public festival_reviewDto read(String userid) throws Exception;
	public void delete(festival_reviewDto dto) throws Exception;
	public void update(festival_reviewDto dto) throws Exception;
	public List<festival_reviewDto> listAll(int fno) throws Exception;
}
