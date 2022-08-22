package com.human.service.main;

import java.util.List;

import com.human.dto.main.BoardDtoTest;

public interface IBoardServiceTest {
	public void createTest(BoardDtoTest dto) throws Exception;
	public BoardDtoTest springTest(BoardDtoTest dto) throws Exception;
	public BoardDtoTest summerTest(BoardDtoTest dto) throws Exception;
	public BoardDtoTest autumnTest(BoardDtoTest dto) throws Exception;
	public BoardDtoTest winterTest(BoardDtoTest dto) throws Exception;
	public BoardDtoTest maleTest(BoardDtoTest dto) throws Exception;
	public BoardDtoTest femaleTest(BoardDtoTest dto) throws Exception;
	public List<BoardDtoTest> listAllTest() throws Exception;
}
