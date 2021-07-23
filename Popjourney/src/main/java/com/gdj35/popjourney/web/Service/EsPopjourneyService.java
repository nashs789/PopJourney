package com.gdj35.popjourney.web.Service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gdj35.popjourney.web.Dao.IEsPopjourneyDao;

@Service
public class EsPopjourneyService implements IEsPopjourneyService {
	@Autowired IEsPopjourneyDao iEsPopjourneyDao;

	@Override
	public int getPostCnt(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getPostCnt(params);
	}

	@Override
	public List<HashMap<String, String>> getPostList(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getPostList(params);
	}

	@Override
	public int addPost(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.addPost(params);
	}


	@Override
	public int postUpdate(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.postUpdate(params);
	}

	@Override
	public int postDeletes(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.postDeletes(params);
	}

	@Override
	public HashMap<String, String> getPost(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getPost(params);
	}

	@Override
	public int getJournalCnt(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getJournalCnt(params);
	}
	
	@Override
	public List<HashMap<String, String>> journalList(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.journalList(params);
	}

	@Override
	public int addJournal(HashMap<String, String> params) throws Throwable{
		return iEsPopjourneyDao.addJournal(params);
	}

	@Override
	public HashMap<String, String> getJournal(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getJournal(params);
	}

	@Override
	public int updateJournal(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.updateJournal(params);
	}

	@Override
	public int deleteJournal(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.deleteJournal(params);
	}

	@Override
	public int getPostFCnt(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getPostFCnt(params);
	}

	@Override
	public List<HashMap<String, String>> getPostFList(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getPostFList(params);
	}

	@Override
	public List<HashMap<String, String>> getPostNList(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getPostNList(params);
	}

	@Override
	public int getPostNCnt(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getPostNCnt(params);
	}

	@Override
	public int getPostCMTCnt(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getPostCMTCnt(params);
	}

	@Override
	public List<HashMap<String, String>> getPostCMTList(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getPostCMTList(params);
	}

	


}
