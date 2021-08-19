package com.gdj35.popjourney.web.Dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CJMMDao implements ICJMMDao {
	@Autowired SqlSession sqlSession;
	
	@Override
	public HashMap<String, String> login(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("CJMM.login", params);
	}

	@Override
	public void accCnt(HashMap<String, String> params) throws Throwable {
		sqlSession.update("CJMM.accCnt", params);
	}

	@Override
	public HashMap<String, String> getNumber(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("CJMM.getNumber", params);
	}

	@Override
	public int journalCnt(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("CJMM.journalCnt", params);
	}

	@Override
	public List<HashMap<String, String>> myPageJournal(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("PJ.myPageJournal", params);
	}
		
}
