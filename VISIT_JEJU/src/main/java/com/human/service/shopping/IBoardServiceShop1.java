package com.human.service.shopping;

import java.util.List;

import com.human.dto.shopping.BoardDtoShop1; 



public interface IBoardServiceShop1 {
	public void create(BoardDtoShop1 dto) throws Exception;
	public void create_add(BoardDtoShop1 dto) throws Exception;
	public BoardDtoShop1 read(int pno) throws Exception;
	public void update(BoardDtoShop1 dto) throws Exception;
	
	public void delete(String pno) throws Exception;
	public void delete_add(String pno) throws Exception;
	
	public List<BoardDtoShop1> listAll() throws Exception;
	public List<BoardDtoShop1> listPlus() throws Exception;
	public List<BoardDtoShop1> listInsert() throws Exception;
}
