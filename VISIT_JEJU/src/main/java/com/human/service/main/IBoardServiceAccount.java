package com.human.service.main;

import java.util.List;

import com.human.dto.main.BoardDtoAccount;


public interface IBoardServiceAccount {
	public void createAccount(BoardDtoAccount dto) throws Exception;
	public BoardDtoAccount readAccount(String username) throws Exception;
	public void deleteAccount(String username) throws Exception;
	public void updateAccount(BoardDtoAccount dto) throws Exception;
	public List<BoardDtoAccount> listAllAccount() throws Exception;
}
