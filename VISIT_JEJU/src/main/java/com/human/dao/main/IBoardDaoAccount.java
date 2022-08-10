package com.human.dao.main;

import java.util.List;

import com.human.dto.main.BoardDtoAccount;
public interface IBoardDaoAccount {
	public void createAccount(BoardDtoAccount dto) throws Exception;
	public BoardDtoAccount readAccount(String accountID) throws Exception;
	public void deleteAccount(String accountID) throws Exception;
	public void updateAccount(BoardDtoAccount dto) throws Exception;
	public List<BoardDtoAccount> listAllAccount() throws Exception;
}
