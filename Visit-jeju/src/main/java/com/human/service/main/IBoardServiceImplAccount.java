package com.human.service.main;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.main.IBoardDaoAccount;
import com.human.dto.main.BoardDtoAccount;

@Service
public class IBoardServiceImplAccount implements IBoardServiceAccount {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void createAccount(BoardDtoAccount dto) throws Exception {
		IBoardDaoAccount dao=sqlSession.getMapper(IBoardDaoAccount.class);
		dao.createAccount(dto);
	}
	@Override
	public BoardDtoAccount readAccount(String accountID) throws Exception {
		IBoardDaoAccount dao=sqlSession.getMapper(IBoardDaoAccount.class);
		BoardDtoAccount r=dao.readAccount(accountID);
		return r;
	}

	@Override
	public void updateAccount(BoardDtoAccount dto) throws Exception {
		IBoardDaoAccount dao=sqlSession.getMapper(IBoardDaoAccount.class);
		dao.updateAccount(dto);
	}

	@Override
	public List<BoardDtoAccount> listAllAccount() throws Exception {
		IBoardDaoAccount dao=sqlSession.getMapper(IBoardDaoAccount.class);
		List<BoardDtoAccount> dtos=dao.listAllAccount();
		return dtos;
	}
}
