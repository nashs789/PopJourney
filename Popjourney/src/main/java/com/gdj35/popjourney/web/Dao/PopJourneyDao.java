package com.gdj35.popjourney.web.Dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PopJourneyDao implements IPopJourneyDao {
	@Autowired
	public SqlSession sql;

	@Override
	public HashMap<String, String> login(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectOne("PJ.login", params);
	}
	
	@Override
	public HashMap<String, String> IDDbCk(HashMap<String, String> params) throws Throwable
	{
		return sql.selectOne("PJ.IDDbCk", params);
	}
	
	@Override
	public HashMap<String, String> IDDbCk2(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectOne("PJ.IDDbCk2", params);
	}

	@Override
	public HashMap<String, String> nicDbCk(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectOne("PJ.nicDbCk", params);
	}
	
	@Override
	public HashMap<String, String> nicDbCk2(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectOne("PJ.nicDbCk2", params);
	}
	
	@Override
	public int join(HashMap<String, String> params) throws Throwable 
	{
		return sql.insert("PJ.join",params);
	}

	@Override
	public HashMap<String, String> findID(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectOne("PJ.findID", params);
	}

	@Override
	public HashMap<String, String> findPW(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectOne("PJ.findPW", params);
	}

	@Override
	public int updatePW(HashMap<String, String> params) throws Throwable 
	{
		return sql.update("PJ.updatePW", params);
	}

	@Override
	public HashMap<String, String> getInfo(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectOne("PJ.getInfo", params);
	}

	@Override
	public int updateInfo(HashMap<String, String> params) throws Throwable 
	{
		return sql.update("PJ.updateInfo", params);
	}

	@Override
	public void accCnt(HashMap<String, String> params) throws Throwable
	{
		sql.update("PJ.accCnt", params);
	}

	@Override
	public HashMap<String, String> getInfo2(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectOne("PJ.getInfo2", params);
	}

	@Override
	public int updateProfile(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectOne("PJ.updateProfile", params);
	}

	@Override
	public int delete(HashMap<String, String> params) throws Throwable 
	{
		return sql.update("PJ.delete", params);
	}
	
	@Override
	public List<HashMap<String, String>> notice() throws Throwable 
	{
		return sql.selectList("PJ.notice");
	}

	@Override
	public List<HashMap<String, String>> yearRank(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectList("PJ.yearRank", params);
	}

	@Override
	public List<HashMap<String, String>> monthRank(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectList("PJ.monthRank", params);
	}

	@Override
	public List<HashMap<String, String>> weekRank(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectList("PJ.weekRank", params);
	}

	@Override
	public HashMap<String, String> getDetail(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectOne("PJ.getDetail", params);
	}

	@Override
	public List<HashMap<String, String>> notification(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectList("PJ.notification", params);
	}

	@Override
	public int read(HashMap<String, String> params) throws Throwable 
	{
		return sql.update("PJ.read", params);
	}

	@Override
	public void setProfile() throws Throwable 
	{
		sql.insert("PJ.setProfile");
	}

	@Override
	public HashMap<String, String> pageCnt(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectOne("PJ.pageCnt", params);
	}

	@Override
	public List<HashMap<String, String>> timeline(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectList("PJ.timeline", params);
	}

	@Override
	public HashMap<String, String> timelinePageCnt(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectOne("PJ.timelinePageCnt", params);
	}

	@Override
	public HashMap<String, String> miniProfile(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectOne("PJ.miniProfile", params);
	}

	@Override
	public List<HashMap<String, String>> myPageJournal(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectList("PJ.myPageJournal", params);
	}

	@Override
	public int journalCnt(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectOne("PJ.journalCnt", params);
	}

	@Override
	public HashMap<String, String> myPageProfile(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectOne("PJ.myPageProfile", params);
	}

	@Override
	public List<HashMap<String, String>> myPageFollower(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectList("PJ.myPageFollower", params);
	}

	@Override
	public int followerCnt(HashMap<String, String> params) throws Throwable
	{
		return sql.selectOne("PJ.followerCnt", params);
	}

	@Override
	public int followingCnt(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectOne("PJ.followingCnt", params);
	}

	@Override
	public List<HashMap<String, String>> myPageFollowing(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectList("PJ.myPageFollowing", params);
	}

	@Override
	public HashMap<String, String> followingMemo(HashMap<String, String> params) throws Throwable
{
		return sql.selectOne("PJ.followingMemo", params);
	}

	@Override
	public int updateMemo(HashMap<String, String> params) throws Throwable 
	{
		return sql.update("PJ.updateMemo", params);
	}

	@Override
	public int followStatus(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectOne("PJ.followStatus", params);
	}

	@Override
	public int unfollow(HashMap<String, String> params) throws Throwable 
	{
		return sql.delete("PJ.unfollow", params);
	}

	@Override
	public int follow(HashMap<String, String> params) throws Throwable 
	{
		return sql.insert("PJ.follow", params);
	}

	@Override
	public int followNotf(HashMap<String, String> params) throws Throwable 
	{
		return sql.insert("PJ.followNotf", params);
	}

	@Override
	public List<HashMap<String, String>> myBMK(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectList("PJ.myBMK", params);
	}

	@Override
	public HashMap<String, String> BMKDetail(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectOne("PJ.BMKDetail", params);
	}

	@Override
	public int myBMKCnt(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectOne("PJ.myBMKCnt", params);
	}

	@Override
	public int addBMK(HashMap<String, String> params) throws Throwable 
	{
		return sql.insert("PJ.addBMK", params);
	}

	@Override
	public int delBMK(HashMap<String, String> params) throws Throwable 
	{
		return sql.delete("PJ.delBMK", params);
	}

	@Override
	public int delBMK2(HashMap<String, String> params) throws Throwable 
	{
		return sql.delete("PJ.delBMK2", params);
	}

	@Override
	public int updateBMK(HashMap<String, String> params) throws Throwable 
	{
		return sql.update("PJ.updateBMK", params);
	}

	@Override
	public List<HashMap<String, String>> detailList(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectList("PJ.detailList", params);
	}

	@Override
	public int BMKDetailCnt(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectOne("PJ.BMKDetailCnt", params);
	}

	@Override
	public int deleteBMKJournal(HashMap<String, String> params) throws Throwable 
	{
		return sql.delete("PJ.deleteBMKJournal", params);
	}

	@Override
	public List<HashMap<String, String>> journalList(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectList("PJ.journalList", params);
	}

	@Override
	public int journalListCnt(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectOne("PJ.journalListCnt", params);
	}

	@Override
	public HashMap<String, String> getNumber(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectOne("PJ.getNumber", params);
	}

	@Override
	public int journalCnt2(HashMap<String, String> params) throws Throwable 
	{
		return  sql.selectOne("PJ.journalCnt2", params);
	}

	@Override
	public int regionListCnt(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectOne("PJ.regionListCnt", params);
	}

	@Override
	public List<HashMap<String, String>> regionList(HashMap<String, String> params) throws Throwable 
	{
		return sql.selectList("PJ.regionList", params);
	}

	@Override
	public int mail(HashMap<String, String> params) throws Throwable 
	{
		return sql.insert("PJ.mail", params);
	}

	@Override
	public int checkCode(HashMap<String, String> params) throws Throwable {
		return sql.selectOne("PJ.checkCode", params);
	}

	@Override
	public int upgrade(HashMap<String, String> params) throws Throwable {
		return sql.update("PJ.upgrade", params);
	}

	@Override
	public void addJournal(HashMap<String, String> params) throws Throwable 
	{
		sql.insert("PJ.addJournal", params);
	}

	@Override
	public void addJournalDetail(HashMap<String, String> params) throws Throwable 
	{
		sql.insert("PJ.addJournalDetail", params);
	}

	@Override
	public void addHash(HashMap<String, String> params) throws Throwable 
	{
		sql.insert("PJ.addHash", params);	
	}

	@Override
	public void addJournalHash(HashMap<String, String> params) throws Throwable 
	{
		sql.insert("PJ.addJournalHash", params);	
	}
}
