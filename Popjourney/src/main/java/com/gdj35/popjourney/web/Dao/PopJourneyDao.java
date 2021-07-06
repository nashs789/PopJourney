package com.gdj35.popjourney.web.Dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PopJourneyDao implements IPopJourneyDao {
	@Autowired
	public SqlSession sql;

	@Override
	public HashMap<String, String> login(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectOne("PJ.login", params);
	}
	
	@Override
	public HashMap<String, String> IDDbCk(HashMap<String, String> params) throws Throwable
	{
		return sql.selectOne("PJ.IDDbCk", params);
	}

	@Override
	public HashMap<String, String> nicDbCk(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectOne("PJ.nicDbCk", params);
	}
	
	@Override
	public int join(HashMap<String, String> params) throws Throwable 
	{
		return sql.insert("PJ.join",params);
	}

	@Override
	public HashMap<String, String> findID(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectOne("PJ.findID", params);
	}

	@Override
	public HashMap<String, String> findPW(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectOne("PJ.findPW", params);
	}

	@Override
	public int updatePW(HashMap<String, String> params) throws Throwable 
	{
		return sql.update("PJ.updatePW", params);
	}

	@Override
	public HashMap<String, String> getInfo(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectOne("PJ.getInfo", params);
	}

	@Override
	public int updateInfo(HashMap<String, String> params) throws Throwable 
	{
		return sql.update("PJ.updateInfo", params);
	}

	@Override
	public void accCnt(HashMap<String, String> params) throws Throwable
	{
		sql.update("PJ.accCnt", params);
	}
}
