package com.human.dao.main;

import java.util.List;

import com.human.dto.main.BoardDtoMerchLogData;

public interface IBoardDaoMerchLogData {
	public void createMerchLogData(BoardDtoMerchLogData dto) throws Exception;
	public List<BoardDtoMerchLogData> listAllMerchLogData() throws Exception;
}
