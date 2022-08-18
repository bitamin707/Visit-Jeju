package com.human.service.main;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.main.IBoardDaoAccount;
import com.human.dao.main.IBoardDaoAuthority;
import com.human.dto.main.BoardDtoAccount;
import com.human.dto.main.BoardDtoAuthority;

@Service
public class IBoardServiceImplAuthority implements IBoardServiceAuthority{

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void createAuthority(BoardDtoAuthority dto) throws Exception {
		IBoardDaoAuthority dao=sqlSession.getMapper(IBoardDaoAuthority.class);
		dao.createAuthority(dto);
	}

}
