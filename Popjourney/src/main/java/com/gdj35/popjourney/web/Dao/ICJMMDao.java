package com.gdj35.popjourney.web.Dao;

import java.util.HashMap;
import java.util.List;

public interface ICJMMDao {
	
	// -----------------간단한 모바일 작업--------------------------
	public HashMap<String, String> login(HashMap<String, String> params) throws Throwable;

	public void accCnt(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getNumber(HashMap<String, String> params) throws Throwable;

	public int journalCnt(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> myPageJournal(HashMap<String, String> params) throws Throwable;
	
}
