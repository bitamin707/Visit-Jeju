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
		// dao문서를 매핑하는 매퍼 문서를 dao문서에 대입합니다. 
		// 가져온 매개면수 (pm)을 dao.listSearch()에 넣어 리턴합니다.
	}

	@Override
	public int listSearchCount(PageMaker pm) throws Exception {
		IBoardDaoShop2 dao=sqlSession.getMapper(IBoardDaoShop2.class);
		return dao.listSearchCount(pm);
		// 해당 메소드는 총 데이터 갯수가 필요한 것이라 List형태로 DTO문서에 담지 않는다.
	}

}
