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

	public int getPostFCnt(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getPostFList(HashMap<String, String> params)throws Throwable;

	public List<HashMap<String, String>> getPostNList(HashMap<String, String> params)throws Throwable;

	public int getPostNCnt(HashMap<String, String> params) throws Throwable;

	public int getPostCMTCnt(HashMap<String, String> params) throws Throwable;

	public List<HashMap<String, String>> getPostCMTList(HashMap<String, String> params) throws Throwable;

	public int getPostNo(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> editPost(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> nextPost(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> prePost(HashMap<String, String> params) throws Throwable;

	public HashMap<String, String> likeCheck(HashMap<String, String> params) throws Throwable;

	public void deleteLike(HashMap<String, String> params) throws Throwable;

	




}
