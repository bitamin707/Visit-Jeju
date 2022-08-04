package com.human.service.shopping;

import java.util.List; 

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.shopping.IBoardDaoShop1;
import com.human.dto.shopping.BoardDtoShop1;



@Service
public class BoardServiceShop1Impl implements IBoardServiceShop1 {
	@Autowired
	private SqlSession sqlSession;
	@Override
	public void create(BoardDtoShop1 dto) throws Exception {
		//추�? 비�??��?��로직?�� 기술?���? ?��?��?�� service ?��?��?��?��?���? 추�??��???��.
		IBoardDaoShop1 dao=sqlSession.getMapper(IBoardDaoShop1.class);
		dao.create(dto);
	}
	@Override
	public BoardDtoShop1 read(String pno) throws Exception {
		// TODO Auto-generated method stub
		IBoardDaoShop1 dao=sqlSession.getMapper(IBoardDaoShop1.class);
		BoardDtoShop1 r=dao.read(pno);
		return r;
	}

	@Override
	public void delete(String pno) throws Exception {
		// TODO Auto-generated method stub
		IBoardDaoShop1 dao=sqlSession.getMapper(IBoardDaoShop1.class);
		dao.delete(pno);
	}

	@Override
	public void update(BoardDtoShop1 dto) throws Exception {
		// TODO Auto-generated method stub
		IBoardDaoShop1 dao=sqlSession.getMapper(IBoardDaoShop1.class);
		dao.update(dto);
	}

	@Override
	public List<BoardDtoShop1> listAll() throws Exception {
		IBoardDaoShop1 dao=sqlSession.getMapper(IBoardDaoShop1.class);
		List<BoardDtoShop1> dtos=dao.listAll();
		return dtos;
	}
}
