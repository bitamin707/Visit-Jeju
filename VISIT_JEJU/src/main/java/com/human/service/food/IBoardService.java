package com.human.service.food;

import java.util.List;

import com.human.dto.food.BoardDto;



public interface IBoardService {
	public void create(BoardDto dto) throws Exception;
	public BoardDto read(int bno) throws Exception;
	public void delete(int bno) throws Exception;
	public void update(BoardDto dto) throws Exception;
	public List<BoardDto> listAll() throws Exception;
	public void likecreate(BoardDto dto) throws Exception;
	
}
