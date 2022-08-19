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
		IBoardDaoShop1 dao=sqlSession.getMapper(IBoardDaoShop1.class);
		dao.create(dto);
	}
	@Override
	public void create_add(BoardDtoShop1 dto) throws Exception {
		IBoardDaoShop1 dao=sqlSession.getMapper(IBoardDaoShop1.class);
		dao.create_add(dto);		
	}
	@Override
	public void create_basket(BoardDtoShop1 dto) throws Exception {
		IBoardDaoShop1 dao=sqlSession.getMapper(IBoardDaoShop1.class);
		dao.create_basket(dto);		
	}	
	

	
	@Override
	public void delete(String pno) throws Exception {
		// TODO Auto-generated method stub
		IBoardDaoShop1 dao=sqlSession.getMapper(IBoardDaoShop1.class);
		dao.delete(pno);
	}	
	@Override
	public void delete_add(String pno) throws Exception {
		IBoardDaoShop1 dao=sqlSession.getMapper(IBoardDaoShop1.class);
		dao.delete_add(pno);
	}

	
	@Override
	public void update(BoardDtoShop1 dto) throws Exception {
		// TODO Auto-generated method stub
		IBoardDaoShop1 dao=sqlSession.getMapper(IBoardDaoShop1.class);
		dao.update(dto);
	}

	@Override
	public void update_add(BoardDtoShop1 dto) throws Exception {
		IBoardDaoShop1 dao=sqlSession.getMapper(IBoardDaoShop1.class);
		dao.update_add(dto);
		
	}
	
	
	@Override
	public List<BoardDtoShop1> listAll() throws Exception {
		IBoardDaoShop1 dao=sqlSession.getMapper(IBoardDaoShop1.class);
		List<BoardDtoShop1> dtos=dao.listAll();
		return dtos;
	}
	@Override
	public BoardDtoShop1 listPlus(int pno) throws Exception {
		IBoardDaoShop1 dao=sqlSession.getMapper(IBoardDaoShop1.class);
		return dao.listPlus(pno);
	}

	@Override
	public List<BoardDtoShop1> listInsert() throws Exception {
		IBoardDaoShop1 dao=sqlSession.getMapper(IBoardDaoShop1.class);
		List<BoardDtoShop1> dtos=dao.listInsert();
		return dtos;
	}
	@Override
	public List<BoardDtoShop1> basket() throws Exception {
		IBoardDaoShop1 dao=sqlSession.getMapper(IBoardDaoShop1.class);
		List<BoardDtoShop1> dtos=dao.basket();
		return dtos;
	}
	

	
	@Override
	public BoardDtoShop1 read(int pno) throws Exception {
		IBoardDaoShop1 dao=sqlSession.getMapper(IBoardDaoShop1.class);
		return dao.read(pno);
	}
	@Override
	public BoardDtoShop1 read_add(int pno) throws Exception {
		IBoardDaoShop1 dao=sqlSession.getMapper(IBoardDaoShop1.class);
		return dao.read_add(pno);
	}
	@Override
	public List<BoardDtoShop1> showProduct() throws Exception {
		IBoardDaoShop1 dao=sqlSession.getMapper(IBoardDaoShop1.class);
		List<BoardDtoShop1> dtos=dao.showProduct();
		return dtos;
	}

	

}
