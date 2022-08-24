package com.human.dao.main;

import java.util.List;

import com.human.dto.main.BoardDtoTest;

public interface IBoardDaoTest {
	public void createTest(BoardDtoTest dto) throws Exception;
	public List<BoardDtoTest> readTest(String title) throws Exception;
	public List<BoardDtoTest> listAllTest() throws Exception;
}
