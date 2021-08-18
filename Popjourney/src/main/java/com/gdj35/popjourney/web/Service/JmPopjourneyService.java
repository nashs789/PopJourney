package com.gdj35.popjourney.web.Service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gdj35.popjourney.web.Dao.IJmPopjourneyDao;

@Service
public class JmPopjourneyService implements IJmPopjourneyService {
	@Autowired IJmPopjourneyDao iJmPopjourneyDao;

	@Override
	public int getMemCnt(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getMemCnt(params);
	}

	@Override
	public List<HashMap<String, String>> getMemList(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getMemList(params);
	}

	@Override
	public List<HashMap<String, String>> getSex(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getSex(params);
	}

	@Override
	public int deleteMem(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.deleteMem(params);
	}

	@Override
	public List<HashMap<String, String>> communityList(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.communityList(params);
	}

	@Override
	public int getCommunityCnt(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getCommunityCnt(params);
	}

	@Override
	public int getNoticeCnt(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getNoticeCnt(params);
	}

	@Override
	public List<HashMap<String, String>> noticeList(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.noticeList(params);
	}

	@Override
	public int getTravelDiaryCnt(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getTravelDiaryCnt(params);
	}

	@Override
	public List<HashMap<String, String>> travelDiaryList(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.travelDiaryList(params);
	}

	@Override
	public int deleteJournal(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.deleteJournal(params);
	}

	@Override
	public int deleteJournalCmt(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.deleteJournalCmt(params);
	}

	@Override
	public int deletePost(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.deletePost(params);
	}

	@Override
	public int deletePostCmt(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.deletePostCmt(params);
	}

	@Override
	public int getReportCnt(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getReportCnt(params);
	}

	@Override
	public List<HashMap<String, String>> getReportList(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getReportList(params);
	}

	@Override
	public int addMatterWrite(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.addMatterWrite(params);
	}

	@Override
	public int getMatterCnt(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getMatterCnt(params);
	}

	@Override
	public List<HashMap<String, String>> getMatterList(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getMatterList(params);
	}

	@Override
	public int getRankCnt(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getRankCnt(params);
	}

	@Override
	public List<HashMap<String, String>> getRankList(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getRankList(params);
	}

	@Override
	public HashMap<String, String> getMatter(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getMatter(params);
	}

	@Override
	public int writeCmt(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.writeCmt(params);
	}

	@Override
	public int updateMatter(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.updateMatter(params);
	}

	@Override
	public int updateMatters(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.updateMatters(params);
	}

	@Override
	public int deleteMatter(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.deleteMatter(params);
	}

	@Override
	public int addMatterNotf(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.addMatterNotf(params);
	}

	@Override
	public int updateCmt(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.updateCmt(params);
	}

	@Override
	public int addMatterNotf2(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.addMatterNotf2(params);
	}

	@Override
	public HashMap<String, String> getCmtDate(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getCmtDate(params);
	}

	@Override
	public int deleteCmt(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.deleteCmt(params);
	}

	@Override
	public int FAQCnt(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.FAQCnt(params);
	}

	@Override
	public List<HashMap<String, String>> FAQList(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.FAQList(params);
	}

	@Override
	public List<HashMap<String, String>> getJournalList(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getJournalList(params);
	}

	@Override
	public List<HashMap<String, String>> getHashList(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getHashList(params);
	}

	@Override
	public List<HashMap<String, String>> getBoardList(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getBoardList(params);
	}

	@Override
	public List<HashMap<String, String>> getNicList(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getNicList(params);
	}

	@Override
	public int getJournalCnt(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getJournalCnt(params);
	}

	@Override
	public int getHashCnt(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getHashCnt(params);
	}

	@Override
	public int getBoardCnt(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getBoardCnt(params);
	}

	@Override
	public int getNicCnt(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getNicCnt(params);
	}
	
	@Override
	public List<HashMap<String, String>> getJournalDetailList(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getJournalDetailList(params);
	}

	@Override
	public List<HashMap<String, String>> getHashDetailList(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getHashDetailList(params);
	}

	@Override
	public List<HashMap<String, String>> getBoardDetailList(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getBoardDetailList(params);
	}

	@Override
	public List<HashMap<String, String>> getNicDetailList(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getNicDetailList(params);
	}

	@Override
	public HashMap<String, String> getJournal(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getJournal(params);
	}

	@Override
	public List<HashMap<String, String>> getMemoData(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getMemoData(params);
	}

	@Override
	public int getSequenceCnt(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getSequenceCnt(params);
	}

	@Override
	public List<HashMap<String, String>> getHash(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getHash(params);
	}

	@Override
	public List<HashMap<String, String>> getJournalCmt(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getJournalCmt(params);
	}

	@Override
	public int getCmtCnt(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getCmtCnt(params);
	}

	@Override
	public int getCmtAdds(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getCmtAdds(params);
	}

	@Override
	public int getCmtNotf(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getCmtNotf(params);
	}

	@Override
	public int getCmtEdits(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getCmtEdits(params);
	}

	@Override
	public int getCmtCmtAdds(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getCmtCmtAdds(params);
	}

	@Override
	public int getCmtCmtNotf(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getCmtCmtNotf(params);
	}

	@Override
	public int getCmtCmtNotf2(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getCmtCmtNotf2(params);
	}

	@Override
	public int getCmtDeletes(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getCmtDeletes(params);
	}

	@Override
	public List<HashMap<String, String>> getSequence(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getSequence(params);
	}

	@Override
	public int getJournalDeletes(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getJournalDeletes(params);
	}

	@Override
	public HashMap<String, String> likeCheck(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.likeCheck(params);
	}

	@Override
	public int addLike(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.addLike(params);
	}

	@Override
	public int likeNotf(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.likeNotf(params);
	}

	@Override
	public int delLike(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.delLike(params);
	}

	@Override
	public int journalHit(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.journalHit(params);
	}

	@Override
	public List<HashMap<String, String>> getBmkList(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getBmkList(params);
	}

	@Override
	public int addBmk(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.addBmk(params);
	}

	@Override
	public int deleteBmk(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.deleteBmk(params);
	}

	@Override
	public HashMap<String, String> getBmkno(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getBmkno(params);
	}

	@Override
	public int getBmkFolderCnt(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getBmkFolderCnt(params);
	}

	@Override
	public int getJournalBmkDeletes(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getJournalBmkDeletes(params);
	}

	@Override
	public int getGradeUpgrade(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getGradeUpgrade(params);
	}

	@Override
	public int getDownGrade(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getDownGrade(params);
	}

	@Override
	public int getReportApprovals(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getReportApprovals(params);
	}

	@Override
	public int getUnReportApprovals(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getUnReportApprovals(params);
	}

	@Override
	public int getCmtCmtDeletes(HashMap<String, String> params) throws Throwable {
		return iJmPopjourneyDao.getCmtCmtDeletes(params);
	}

}
