package com.human.service.main;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.main.IBoardDaoMerchLogData;
import com.human.dto.main.BoardDtoMerchLogData;


@Service
public class IBoardServiceImplMerchLogData implements IBoardServiceMerchLogData {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void createMerchLogData(BoardDtoMerchLogData dto) throws Exception {
		IBoardDaoMerchLogData dao=sqlSession.getMapper(IBoardDaoMerchLogData.class);
		dao.createMerchLogData(dto);
	}

	@Override
	public List<BoardDtoMerchLogData> listAllMerchLogData() throws Exception {
		IBoardDaoMerchLogData dao=sqlSession.getMapper(IBoardDaoMerchLogData.class);
		List<BoardDtoMerchLogData> dtos=dao.listAllMerchLogData();
		return dtos;
	}

	

}

