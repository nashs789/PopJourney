package com.gdj35.popjourney.web.Service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gdj35.popjourney.web.Dao.IPopJourneyDao;

@Service
public class PopJourneyService implements IPopJourneyService {
	@Autowired
	public IPopJourneyDao ipjd;

	@Override
	public HashMap<String, String> login(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.login(params);
	}

	@Override
	public HashMap<String, String> IDDbCk(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.IDDbCk(params);
	}
	
	@Override
	public HashMap<String, String> IDDbCk2(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.IDDbCk2(params);
	}

	@Override
	public HashMap<String, String> nicDbCk(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.nicDbCk(params);
	}
	
	@Override
	public HashMap<String, String> nicDbCk2(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.nicDbCk2(params);
	}
	
	@Override
	public int join(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.join(params);
	}

	@Override
	public HashMap<String, String> findID(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.findID(params);
	}

	@Override
	public HashMap<String, String> findPW(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.findPW(params);
	}

	@Override
	public int updatePW(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.updatePW(params);
	}

	@Override
	public HashMap<String, String> getInfo(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.getInfo(params);
	}

	@Override
	public int updateInfo(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.updateInfo(params);
	}

	@Override
	public void accCnt(HashMap<String, String> params) throws Throwable 
	{
		ipjd.accCnt(params);
	}

	@Override
	public HashMap<String, String> getInfo2(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.getInfo2(params);
	}

	@Override
	public int updateProfile(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.updateProfile(params);
	}

	@Override
	public int delete(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.delete(params);
	}
	
	@Override
	public List<HashMap<String, String>> notice() throws Throwable 
	{
		return ipjd.notice();
	}

	@Override
	public List<HashMap<String, String>> yearRank(HashMap<String, String> params) throws Throwable
	{
		return ipjd.yearRank(params);
	}

	@Override
	public List<HashMap<String, String>> monthRank(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.monthRank(params);
	}

	@Override
	public List<HashMap<String, String>> weekRank(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.weekRank(params);
	}

	@Override
	public HashMap<String, String> getDetail(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.getDetail(params);
	}

	@Override
	public List<HashMap<String, String>> notification(HashMap<String, String> params) throws Throwable
	{
		return ipjd.notification(params);
	}

	@Override
	public int read(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.read(params);
	}

	@Override
	public void setProfile() throws Throwable 
	{
		ipjd.setProfile();
	}

	@Override
	public HashMap<String, String> pageCnt(HashMap<String, String> params) throws Throwable
	{
		return ipjd.pageCnt(params);
	}

	@Override
	public List<HashMap<String, String>> timeline(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.timeline(params);
	}

	@Override
	public HashMap<String, String> timelinePageCnt(HashMap<String, String> params) throws Throwable
	{
		return ipjd.timelinePageCnt(params);
	}

	@Override
	public HashMap<String, String> miniProfile(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.miniProfile(params);
	}

	@Override
	public List<HashMap<String, String>> myPageJournal(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.myPageJournal(params);
	}

	@Override
	public int journalCnt(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.journalCnt(params);
	}

	@Override
	public HashMap<String, String> myPageProfile(HashMap<String, String> params) throws Throwable
	{
		return ipjd.myPageProfile(params);
	}

	@Override
	public List<HashMap<String, String>> myPageFollower(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.myPageFollower(params);
	}

	@Override
	public int followerCnt(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.followerCnt(params);
	}

	@Override
	public int followingCnt(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.followingCnt(params);
	}

	@Override
	public List<HashMap<String, String>> myPageFollowing(HashMap<String, String> params) throws Throwable
	{
		return ipjd.myPageFollowing(params);
	}

	@Override
	public HashMap<String, String> followingMemo(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.followingMemo(params);
	}

	@Override
	public int updateMemo(HashMap<String, String> params) throws Throwable 
	{
		return ipjd.updateMemo(params);
	}
}
