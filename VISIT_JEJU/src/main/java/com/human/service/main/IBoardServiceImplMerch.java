package com.human.service.main;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.main.IBoardDaoMerch;
import com.human.dto.main.BoardDtoMerch;
@Service
public class IBoardServiceImplMerch implements IBoardServiceMerch {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public BoardDtoMerch readMerch(int bno) throws Exception {
		IBoardDaoMerch dao=sqlSession.getMapper(IBoardDaoMerch.class);
		BoardDtoMerch r=dao.readMerch(bno);
		return r;
	}

	@Override
	public void updateMerch(BoardDtoMerch dto) throws Exception {
		IBoardDaoMerch dao=sqlSession.getMapper(IBoardDaoMerch.class);
		dao.updateMerch(dto);
	}

	@Override
	public List<BoardDtoMerch> listAllMerch() throws Exception {
		IBoardDaoMerch dao=sqlSession.getMapper(IBoardDaoMerch.class);
		List<BoardDtoMerch> dtos=dao.listAllMerch();
		return dtos;
	}

}
