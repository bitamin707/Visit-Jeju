package com.human.service.main;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.main.IBoardDaoBest;
import com.human.dto.main.BoardDtoBest;

@Service
public class IBoardServiceImplBest implements IBoardServiceBest {
	@Autowired
	private SqlSession sqlSession;
	@Override
	public BoardDtoBest read(int bno) throws Exception {
		IBoardDaoBest dao=sqlSession.getMapper(IBoardDaoBest.class);
		BoardDtoBest r=dao.read(bno);
		return r;
	}
	@Override
	public void update(BoardDtoBest dto) throws Exception {
		IBoardDaoBest dao=sqlSession.getMapper(IBoardDaoBest.class);
		dao.update(dto);
	}
	
	@Override
	public List<BoardDtoBest> listAll() throws Exception {
		IBoardDaoBest dao=sqlSession.getMapper(IBoardDaoBest.class);
		List<BoardDtoBest> dtos=dao.listAll();
		return dtos;
	}
}
