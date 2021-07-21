package com.gdj35.popjourney.web.Service;

import java.util.HashMap;
import java.util.List;

public interface IEsPopjourneyService {

	public int getPostCnt(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getPostList(HashMap<String, String> params) throws Throwable;

	public int addPost(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> getPost(HashMap<String, String> params) throws Throwable;

	public int postUpdate(HashMap<String, String> params) throws Throwable;

	public int postDeletes(HashMap<String, String> params) throws Throwable;
	
	public int getJournalCnt(HashMap<String, String> params)throws Throwable;

	public List<HashMap<String, String>> journalList(HashMap<String, String> params) throws Throwable;

	public int addJournal(HashMap<String, String> params) throws Throwable;
	
	public HashMap<String, String> getJournal(HashMap<String, String> params) throws Throwable;

	public int updateJournal(HashMap<String, String> params) throws Throwable;

	public int deleteJournal(HashMap<String, String> params) throws Throwable;

	public int getPostFCnt(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getPostFList(HashMap<String, String> params)throws Throwable;

	




}
