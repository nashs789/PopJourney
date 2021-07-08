package com.gdj35.popjourney.web.Service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gdj35.popjourney.web.Dao.IJmPopjourneyDao;
import com.gdj35.popjourney.web.Dao.JmPopjourneyDao;

@Service
public class JmPopjourneyService implements IJmPopjourneyService {
	@Autowired IJmPopjourneyDao iJmPopjourneyDao;

	@Override
	public int getMemCnt(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getMemCnt(params);
	}

	@Override
	public List<HashMap<String, String>> getMemList(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getMemList(params);
	}

	@Override
	public List<HashMap<String, String>> getSex(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getSex(params);
	}

	@Override
	public int deleteMem(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.deleteMem(params);
	}

}
