package com.human.service.shopping;

import java.util.List;  

import com.human.dto.shopping.BoardDtoShop2;
import com.human.vo.shopping.PageMaker;

public interface IBoardServiceShop2 {
	public void write(BoardDtoShop2 board) throws Exception;
	public void remove(int bno) throws Exception;
	
	public List<BoardDtoShop2> listSearchCriteria(PageMaker pm) throws Exception;
	public int listSearchCount(PageMaker pm) throws Exception;
}
