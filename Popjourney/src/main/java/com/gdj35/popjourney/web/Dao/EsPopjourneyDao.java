package com.gdj35.popjourney.web.Dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EsPopjourneyDao implements IEsPopjourneyDao {
	@Autowired SqlSession sqlSession;

	@Override
	public int getPostCnt(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("EsPJ.getPostCnt", params);
	}

	@Override
	public List<HashMap<String, String>> getPostList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("EsPJ.getPostList", params);
	}

	@Override
	public int addPost(HashMap<String, String> params) throws Throwable {
		return sqlSession.insert("EsPJ.addPost", params);
	}


	@Override
	public int postUpdate(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("EsPJ.postUpdate", params);
	}

	@Override
	public int postDeletes(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("EsPJ.postDeletes", params);
	}

	@Override
	public HashMap<String, String> getPost(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("EsPJ.getPost", params);
	}

	@Override
	public int getJournalCnt(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("EsPJ.getJournalCnt", params);
	}
	
	@Override
	public List<HashMap<String, String>> journalList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("EsPJ.journalList", params);
	}

	@Override
	public int addJournal(HashMap<String, String> params) throws Throwable{
		return sqlSession.insert("EsPJ.addJournal", params);
	}

	@Override
	public HashMap<String, String> getJournal(HashMap<String, String> params) throws Throwable{
		return sqlSession.selectOne("EsPJ.getJournal", params);
	}

	@Override
	public int updateJournal(HashMap<String, String> params) throws Throwable{
		return sqlSession.update("EsPJ.updateJournal", params);
	}

	@Override
	public int deleteJournal(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("EsPJ.deleteJournal", params);
	}

	@Override
	public int getPostFCnt(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("EsPJ.getPostFCnt", params);
	}

	@Override
	public List<HashMap<String, String>> getPostFList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("EsPJ.getPostFList", params);
	}


}
