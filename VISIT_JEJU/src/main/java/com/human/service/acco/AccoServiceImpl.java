package com.human.service.acco;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.acco.IAccoDao;
import com.human.dto.acco.AccoDto;

@Service
public class AccoServiceImpl implements IAccoService {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insert(AccoDto dto) throws Exception {
		// TODO Auto-generated method stub
		IAccoDao dao=sqlSession.getMapper(IAccoDao.class);
		dao.insert(dto);
	}

	@Override
	public AccoDto read(String acco_id) throws Exception {
		// TODO Auto-generated method stub
		IAccoDao dao=sqlSession.getMapper(IAccoDao.class);
		
		return dao.read(acco_id);
	}

	@Override
	public void delete(String acco_id) throws Exception {
		// TODO Auto-generated method stub
		IAccoDao dao=sqlSession.getMapper(IAccoDao.class);
		dao.delete(acco_id);
	}

	@Override
	public void update(AccoDto dto) throws Exception {
		// TODO Auto-generated method stub
		IAccoDao dao=sqlSession.getMapper(IAccoDao.class);
		dao.update(dto);
	}

	@Override
	public List<AccoDto> listAll() throws Exception {
		// TODO Auto-generated method stub
		IAccoDao dao=sqlSession.getMapper(IAccoDao.class);
		return dao.listAll();
	}

}
