package com.human.service.shopping;

import java.util.List; 


import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.shopping.IBoardDaoShop2;
import com.human.dto.shopping.BoardDtoShop2;
import com.human.vo.shopping.PageMaker;



@Service
public class BoardServiceShop2Impl implements IBoardServiceShop2 {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void write(BoardDtoShop2 board) throws Exception {
		System.out.println(sqlSession);
		IBoardDaoShop2 dao=sqlSession.getMapper(IBoardDaoShop2.class);
		dao.create(board);
	}


	@Override
	public void remove(int bno) throws Exception {
		IBoardDaoShop2 dao=sqlSession.getMapper(IBoardDaoShop2.class);
		dao.delete(bno);

	}

	@Override
	public List<BoardDtoShop2> listSearchCriteria(PageMaker pm) throws Exception {
		IBoardDaoShop2 dao=sqlSession.getMapper(IBoardDaoShop2.class);
		return dao.listSearch(pm);		
		// dao������ �����ϴ� ���� ������ dao������ �����մϴ�. 
		// ������ �Ű���� (pm)�� dao.listSearch()�� �־� �����մϴ�.
	}

	@Override
	public int listSearchCount(PageMaker pm) throws Exception {
		IBoardDaoShop2 dao=sqlSession.getMapper(IBoardDaoShop2.class);
		return dao.listSearchCount(pm);
		// �ش� �޼ҵ�� �� ������ ������ �ʿ��� ���̶� List���·� DTO������ ���� �ʴ´�.
	}

}
