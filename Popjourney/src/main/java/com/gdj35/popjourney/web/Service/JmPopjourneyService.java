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
	public int deleteMem(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.deleteMem(params);
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

	@Override
	public int deleteJournal(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.deleteJournal(params);
	}

	@Override
	public int deleteJournalCmt(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.deleteJournalCmt(params);
	}

	@Override
	public int deletePost(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.deletePost(params);
	}

	@Override
	public int deletePostCmt(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.deletePostCmt(params);
	}

	@Override
	public int getReportCnt(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getReportCnt(params);
	}

	@Override
	public List<HashMap<String, String>> getReportList(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getReportList(params);
	}

}
