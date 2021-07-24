package com.gdj35.popjourney.web.Dao;

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

	@Override
	public int addMatterWrite(HashMap<String, String> params) throws Throwable {
		return sqlSession.insert("JmPJ.addMatterWrite", params);
	}

	@Override
	public int getMatterCnt(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("JmPJ.getMatterCnt", params);
	}

	@Override
	public List<HashMap<String, String>> getMatterList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("JmPJ.getMatterList", params);
	}

	@Override
	public int getRankCnt(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("JmPJ.getRankCnt", params);
	}

	@Override
	public List<HashMap<String, String>> getRankList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("JmPJ.getRankList", params);
	}

	@Override
	public HashMap<String, String> getMatter(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("JmPJ.getMatter", params);
	}

	@Override
	public int writeCmt(HashMap<String, String> params) throws Throwable {
		return sqlSession.insert("JmPJ.writeCmt", params);
	}

	@Override
	public int updateMatter(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("JmPJ.updateMatter", params);
	}

	@Override
	public int updateMatters(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("JmPJ.updateMatters", params);
	}

	@Override
	public int deleteMatter(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("JmPJ.deleteMatter", params);
	}

	@Override
	public int addMatterNotf(HashMap<String, String> params) throws Throwable {
		return sqlSession.insert("JmPJ.addMatterNotf", params);
	}

	@Override
	public int updateCmt(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("JmPJ.updateCmt", params);
	}

	@Override
	public int addMatterNotf2(HashMap<String, String> params) throws Throwable {
		return sqlSession.insert("JmPJ.addMatterNotf2", params);
	}

	@Override
	public HashMap<String, String> getCmtDate(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("JmPJ.getCmtDate", params);
	}

	@Override
	public int deleteCmt(HashMap<String, String> params) throws Throwable {
		return sqlSession.delete("JmPJ.deleteCmt", params);
	}

	@Override
	public int FAQCnt(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("JmPJ.FAQCnt", params);
	}

	@Override
	public List<HashMap<String, String>> FAQList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("JmPJ.FAQList", params);
	}

	@Override
	public List<HashMap<String, String>> getJournalList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("JmPJ.getJournalList", params);
	}

	@Override
	public List<HashMap<String, String>> getHashList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("JmPJ.getHashList", params);
	}

	@Override
	public List<HashMap<String, String>> getBoardList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("JmPJ.getBoardList", params);
	}

	@Override
	public List<HashMap<String, String>> getNicList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("JmPJ.getNicList", params);
	}

	@Override
	public int getJournalCnt(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("JmPJ.getJournalCnt", params);
	}

	@Override
	public int getHashCnt(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("JmPJ.getHashCnt", params);
	}

	@Override
	public int getBoardCnt(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("JmPJ.getBoardCnt", params);
	}

	@Override
	public int getNicCnt(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("JmPJ.getNicCnt", params);
	}

	@Override
	public List<HashMap<String, String>> getJournalDetailList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("JmPJ.getJournalDetailList", params);
	}

	@Override
	public List<HashMap<String, String>> getHashDetailList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("JmPJ.getHashDetailList", params);
	}

	@Override
	public List<HashMap<String, String>> getBoardDetailList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("JmPJ.getBoardDetailList", params);
	}

	@Override
	public List<HashMap<String, String>> getNicDetailList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("JmPJ.getNicDetailList", params);
	}

	@Override
	public HashMap<String, String> getJournal(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("JmPJ.getJournal", params);
	}

	@Override
	public List<HashMap<String, String>> getMemoData(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("JmPJ.getMemoData", params);
	}

	@Override
	public int getSequenceCnt(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("JmPJ.getSequenceCnt", params);
	}

	@Override
	public List<HashMap<String, String>> getHash(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("JmPJ.getHash", params);
	}

}
