package com.gdj35.popjourney.web.Service;

import java.util.HashMap;
import java.util.List;

public interface IPopJourneyService {

	HashMap<String, String> login(HashMap<String, String> params) throws Throwable;

	HashMap<String, String> IDDbCk(HashMap<String, String> params) throws Throwable;
	
	HashMap<String, String> IDDbCk2(HashMap<String, String> params) throws Throwable;

	HashMap<String, String> nicDbCk(HashMap<String, String> params) throws Throwable;
	
	HashMap<String, String> nicDbCk2(HashMap<String, String> params) throws Throwable;

	int join(HashMap<String, String> params) throws Throwable;

	HashMap<String, String> findID(HashMap<String, String> params) throws Throwable;

	HashMap<String, String> findPW(HashMap<String, String> params) throws Throwable;

	int updatePW(HashMap<String, String> params) throws Throwable;

	HashMap<String, String> getInfo(HashMap<String, String> params) throws Throwable;

	int updateInfo(HashMap<String, String> params) throws Throwable;

	void accCnt(HashMap<String, String> params) throws Throwable;

	HashMap<String, String> getInfo2(HashMap<String, String> params) throws Throwable;

	int updateProfile(HashMap<String, String> params) throws Throwable;

	int delete(HashMap<String, String> params) throws Throwable;

	List<HashMap<String, String>> notice() throws Throwable;

	List<HashMap<String, String>> yearRank(HashMap<String, String> params) throws Throwable;

	List<HashMap<String, String>> monthRank(HashMap<String, String> params) throws Throwable;

	List<HashMap<String, String>> weekRank(HashMap<String, String> params) throws Throwable;

	HashMap<String, String> getDetail(HashMap<String, String> params) throws Throwable;

	List<HashMap<String, String>> notification(HashMap<String, String> params) throws Throwable;

	int read(HashMap<String, String> params) throws Throwable;

	void setProfile() throws Throwable;

	HashMap<String, String> pageCnt(HashMap<String, String> params) throws Throwable;

	List<HashMap<String, String>> timeline(HashMap<String, String> params) throws Throwable;

	HashMap<String, String> timelinePageCnt(HashMap<String, String> params) throws Throwable;

	HashMap<String, String> miniProfile(HashMap<String, String> params)throws Throwable;


}
