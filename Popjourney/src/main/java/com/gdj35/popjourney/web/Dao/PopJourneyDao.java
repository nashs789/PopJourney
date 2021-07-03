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
}
