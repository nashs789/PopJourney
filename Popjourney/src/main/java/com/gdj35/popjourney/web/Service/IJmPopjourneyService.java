package com.gdj35.popjourney.web.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public interface IJmPopjourneyService {

	public int getMemCnt(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getMemList(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getSex(HashMap<String, String> params) throws Throwable;

	public int deleteMem(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> communityList(HashMap<String, String> params) throws Throwable;

	public int getCommunityCnt(HashMap<String, String> params) throws Throwable;

	public int getNoticeCnt(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> noticeList(HashMap<String, String> params) throws Throwable;

	public int getTravelDiaryCnt(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> travelDiaryList(HashMap<String, String> params) throws Throwable;

	public int deleteJournal(HashMap<String, String> params) throws Throwable;

	public int deleteJournalCmt(HashMap<String, String> params) throws Throwable;

	public int deletePost(HashMap<String, String> params) throws Throwable;

	public int deletePostCmt(HashMap<String, String> params) throws Throwable;

	public int getReportCnt(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getReportList(HashMap<String, String> params) throws Throwable;

	public int addMatterWrite(HashMap<String, String> params) throws Throwable;

	public int getMatterCnt(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getMatterList(HashMap<String, String> params) throws Throwable;

	public int getRankCnt(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getRankList(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getMatter(HashMap<String, String> params) throws Throwable;
 
	public int writeCmt(HashMap<String, String> params) throws Throwable;

	public int updateMatter(HashMap<String, String> params) throws Throwable;

	public int updateMatters(HashMap<String, String> params) throws Throwable;

	public int deleteMatter(HashMap<String, String> params) throws Throwable;

	public int addMatterNotf(HashMap<String, String> params) throws Throwable;

	public int updateCmt(HashMap<String, String> params) throws Throwable;

	public int addMatterNotf2(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getCmtDate(HashMap<String, String> params) throws Throwable;

	public int deleteCmt(HashMap<String, String> params) throws Throwable;

}
