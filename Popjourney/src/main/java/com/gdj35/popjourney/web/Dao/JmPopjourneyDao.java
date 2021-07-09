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
	public int deleteMem(ArrayList<Integer> dMemNo) throws Throwable {
		return sqlSession.update("JmPJ.deleteMem", dMemNo);
	}

	@Override
	public List<HashMap<String, String>> communityList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("JmPJ.communityList", params);
	}

	@Override
	public int getCommunityCnt(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("JmPJ.getCommunityCnt", params);
	}
}
