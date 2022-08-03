package com.human.dao.shopping;

import java.util.List;

import com.human.dto.shopping.BoardDtoShop1; 



public interface IBoardDaoShop1 {
	public void create(BoardDtoShop1 dto) throws Exception;
	public BoardDtoShop1 read(String pno) throws Exception;
	public void delete(String pno) throws Exception;
	public void update(BoardDtoShop1 dto) throws Exception;
	public List<BoardDtoShop1> listAll() throws Exception;
	
}
