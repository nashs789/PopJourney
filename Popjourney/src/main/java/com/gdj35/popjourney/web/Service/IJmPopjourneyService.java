package com.gdj35.popjourney.web.Service;

import java.util.HashMap;
import java.util.List;

public interface IJmPopjourneyService {

	public int getMemCnt(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getMemList(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getSex(HashMap<String, String> params) throws Throwable;

	public int deleteMem(HashMap<String, String> params) throws Throwable;

}
