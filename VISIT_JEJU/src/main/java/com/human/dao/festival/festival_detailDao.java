package com.human.dao.festival;

import com.human.dto.festival.festival_detailDto;

public interface festival_detailDao {
	public void create (festival_detailDto dto) throws Exception;
	public festival_detailDto read(Integer fno) throws Exception;
	public void delete(Integer fno) throws Exception;
	public void update(festival_detailDto dto) throws Exception;
}
