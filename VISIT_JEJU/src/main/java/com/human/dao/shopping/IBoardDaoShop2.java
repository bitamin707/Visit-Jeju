package com.human.dao.shopping;

import java.util.List; 

import com.human.dto.shopping.BoardDtoShop2;
import com.human.vo.shopping.PageMaker;

public interface IBoardDaoShop2 {
	  public void create(BoardDtoShop2 board) throws Exception;
	  public void delete(int bno) throws Exception;

	  public List<BoardDtoShop2> listSearch(PageMaker pm)throws Exception;	  
	  public int listSearchCount(PageMaker pm)throws Exception;
	  
}
