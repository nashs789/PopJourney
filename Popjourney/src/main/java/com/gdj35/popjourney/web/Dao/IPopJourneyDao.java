package com.gdj35.popjourney.web.Dao;

import java.util.HashMap;
import java.util.List;

public interface IPopJourneyDao {

	HashMap<String, String> login(HashMap<String, String> params) throws Throwable;

	HashMap<String, String> IDDbCk(HashMap<String, String> params) throws Throwable;

	HashMap<String, String> nicDbCk(HashMap<String, String> params) throws Throwable;
	
	int join(HashMap<String, String> params) throws Throwable;

	HashMap<String, String> findID(HashMap<String, String> params) throws Throwable;

	HashMap<String, String> findPW(HashMap<String, String> params) throws Throwable;

	int updatePW(HashMap<String, String> params) throws Throwable;
}
