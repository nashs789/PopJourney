package com.gdj35.popjourney.web.Service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gdj35.popjourney.web.Dao.IPopJourneyDao;

@Service
public class PopJourneyService implements IPopJourneyService {
	@Autowired
	public IPopJourneyDao ipjd;

	@Override
	public HashMap<String, String> login(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.login(params);
	}

	@Override
	public HashMap<String, String> IDDbCk(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.IDDbCk(params);
	}

	@Override
	public HashMap<String, String> nicDbCk(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.nicDbCk(params);
	}
	
	@Override
	public int join(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.join(params);
	}

	@Override
	public HashMap<String, String> findID(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.findID(params);
	}

	@Override
	public HashMap<String, String> findPW(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.findPW(params);
	}

	@Override
	public int updatePW(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.updatePW(params);
	}

	@Override
	public HashMap<String, String> getInfo(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.getInfo(params);
	}

	@Override
	public int updateInfo(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.updateInfo(params);
	}

	@Override
	public void accCnt(HashMap<String, String> params) throws Throwable 
	{
		ipjd.accCnt(params);
	}
}
