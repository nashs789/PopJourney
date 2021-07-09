package com.gdj35.popjourney.web.Service;

import java.util.ArrayList;
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
	public int deleteMem(ArrayList<Integer> dMemNo) throws Throwable {
		return iJmPopjourneyDao.deleteMem(dMemNo);
	}

	@Override
	public List<HashMap<String, String>> communityList(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.communityList(params);
	}

	@Override
	public int getCommunityCnt(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getCommunityCnt(params);
	}

	@Override
	public int getNoticeCnt(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getNoticeCnt(params);
	}

	@Override
	public List<HashMap<String, String>> noticeList(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.noticeList(params);
	}

	@Override
	public int getTravelDiaryCnt(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getTravelDiaryCnt(params);
	}

	@Override
	public List<HashMap<String, String>> travelDiaryList(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.travelDiaryList(params);
	}

}
