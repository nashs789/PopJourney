package com.gdj35.popjourney.web.Service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gdj35.popjourney.web.Dao.IEsPopjourneyDao;

@Service
public class EsPopjourneyService implements IEsPopjourneyService {
	@Autowired IEsPopjourneyDao iEsPopjourneyDao;

	@Override
	public int getPostCnt(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getPostCnt(params);
	}

	@Override
	public List<HashMap<String, String>> getPostList(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getPostList(params);
	}

	@Override
	public int addPost(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.addPost(params);
	}


	@Override
	public int postUpdate(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.postUpdate(params);
	}

	@Override
	public int postDeletes(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.postDeletes(params);
	}

	@Override
	public HashMap<String, String> getPost(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getPost(params);
	}

	@Override
	public int getPostFCnt(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getPostFCnt(params);
	}

	@Override
	public List<HashMap<String, String>> getPostFList(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getPostFList(params);
	}

	@Override
	public List<HashMap<String, String>> getPostNList(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getPostNList(params);
	}

	@Override
	public int getPostNCnt(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getPostNCnt(params);
	}

	@Override
	public int getPostCMTCnt(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getPostCMTCnt(params);
	}

	@Override
	public List<HashMap<String, String>> getPostCMTList(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getPostCMTList(params);
	}

	@Override
	public int getPostNo(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getPostNo(params);
	}

	@Override
	public HashMap<String, String> editPost(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.editPost(params);
	}

	@Override
	public HashMap<String, String> likeCheck(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.likeCheck(params);
	}


	@Override
	public int addLike(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.addLike(params);
	}

	@Override
	public int delLike(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.delLike(params);
	}

	@Override
	public int writeCmt(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.writeCmt(params);
	}

	@Override
	public int likeNotf(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.likeNotf(params);
	}

	@Override
	public int postHit(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.postHit(params);
	}

	@Override
	public int getCmtCnt(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getCmtCnt(params);
	}

	@Override
	public List<HashMap<String, String>> getPostCmt(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getPostCmt(params);
	}

	@Override
	public int getCmtAdds(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getCmtAdds(params);
	}

	@Override
	public int getCmtNotf(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getCmtNotf(params);
	}

	@Override
	public int getCmtEdits(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getCmtEdits(params);
	}

	@Override
	public int getCmtCmtAdds(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getCmtCmtAdds(params);
	}

	@Override
	public int getCmtCmtNotf(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getCmtCmtNotf(params);
	}

	@Override
	public int getCmtCmtNotf2(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getCmtCmtNotf2(params);
	}

	@Override
	public int getCmtDeletes(HashMap<String, String> params) throws Throwable {
		return iEsPopjourneyDao.getCmtDeletes(params);
	}

}
