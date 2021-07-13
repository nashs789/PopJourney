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

}
