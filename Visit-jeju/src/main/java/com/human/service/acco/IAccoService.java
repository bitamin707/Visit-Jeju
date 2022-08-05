package com.human.service.acco;

import java.util.List;

import com.human.dto.acco.AccoDto;




public interface IAccoService {
	public void insert(AccoDto dto) throws Exception;
	public AccoDto read(String acco_id) throws Exception;
	public void delete(String acco_id) throws Exception;
	public void update(AccoDto dto) throws Exception;
	public List<AccoDto> listAll() throws Exception;
	
}
