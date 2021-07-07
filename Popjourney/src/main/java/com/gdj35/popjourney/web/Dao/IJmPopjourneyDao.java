package com.gdj35.popjourney.web.Dao;

import java.util.HashMap;
import java.util.List;

public interface IJmPopjourneyDao {

	public int getMemCnt(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getMemList(HashMap<String, String> params) throws Throwable;


}
