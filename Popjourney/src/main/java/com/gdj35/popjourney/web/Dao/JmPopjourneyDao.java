package com.gdj35.popjourney.web.Dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class JmPopjourneyDao implements IJmPopjourneyDao {
	@Autowired SqlSession sqlSession;

	@Override
	public int getMemCnt(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("JmPJ.getMemCnt", params);
	}

	@Override
	public List<HashMap<String, String>> getMemList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("JmPJ.getMemList", params);
	}

	@Override
	public List<HashMap<String, String>> getSex(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("JmPJ.getSex", params);
	}

	@Override
	public int deleteMem(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("JmPJ.deleteMem", params);
	}

	@Override
	public List<HashMap<String, String>> communityList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("JmPJ.communityList", params);
	}

	@Override
	public int getCommunityCnt(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("JmPJ.getCommunityCnt", params);
	}

	@Override
	public int getNoticeCnt(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("JmPJ.getNoticeCnt", params);
	}

	@Override
	public List<HashMap<String, String>> noticeList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("JmPJ.noticeList", params);
	}

	@Override
	public int getTravelDiaryCnt(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("JmPJ.getTravelDiaryCnt", params);
	}

	@Override
	public List<HashMap<String, String>> travelDiaryList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("JmPJ.travelDiaryList", params);
	}

	@Override
	public int deleteJournal(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("JmPJ.deleteJournal", params);
	}

	@Override
	public int deleteJournalCmt(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("JmPJ.deleteJournalCmt", params);
	}

	@Override
	public int deletePost(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("JmPJ.deletePost", params);
	}

	@Override
	public int deletePostCmt(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("JmPJ.deletePostCmt", params);
	}

	@Override
	public int getReportCnt(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("JmPJ.getReportCnt", params);
	}

	@Override
	public List<HashMap<String, String>> getReportList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("JmPJ.getReportList", params);
	}
}
