package com.human.service.main;

import java.util.List;

import com.human.dto.main.BoardDtoMerchLogData;

public interface IBoardServiceMerchLogData {
	public void createMerchLogData(BoardDtoMerchLogData dto) throws Exception;
	public List<BoardDtoMerchLogData> listAllMerchLogData() throws Exception;
}
