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
	public int getPostFCnt(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("EsPJ.getPostFCnt", params);
	}

	@Override
	public List<HashMap<String, String>> getPostFList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("EsPJ.getPostFList", params);
	}

	@Override
	public List<HashMap<String, String>> getPostNList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("EsPJ.getPostNList", params);
	}

	@Override
	public int getPostNCnt(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("EsPJ.getPostNCnt", params);
	}

	@Override
	public int getPostCMTCnt(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("EsPJ.getPostCMTCnt", params);
	}

	@Override
	public List<HashMap<String, String>> getPostCMTList(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("EsPJ.getPostCMTList", params);
	}

	@Override
	public int getPostNo(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("EsPJ.getPostNo", params);
	}

	@Override
	public HashMap<String, String> editPost(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("EsPJ.editPost", params);
	}

	@Override
	public HashMap<String, String> likeCheck(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("EsPJ.likeCheck", params);
	}

	@Override
	public int addLike(HashMap<String, String> params) throws Throwable {
		return sqlSession.insert("EsPJ.addLike", params);
	}

	@Override
	public int delLike(HashMap<String, String> params) throws Throwable {
		return sqlSession.delete("EsPJ.delLike", params);
	}

	@Override
	public int writeCmt(HashMap<String, String> params) throws Throwable {
		return sqlSession.insert("EsPJ.writeCmt",params);
	}

	@Override
	public int likeNotf(HashMap<String, String> params) throws Throwable {
		return sqlSession.insert("EsPJ.likeNotf", params);
	}

	@Override
	public int postHit(HashMap<String, String> params) throws Throwable {
		return sqlSession.insert("EsPJ.postHit", params);
	}

	@Override
	public int getCmtCnt(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectOne("EsPJ.getCmtCnt", params);
	}

	@Override
	public List<HashMap<String, String>> getPostCmt(HashMap<String, String> params) throws Throwable {
		return sqlSession.selectList("EsPJ.getPostCmt", params);
	}

	@Override
	public int getCmtAdds(HashMap<String, String> params) throws Throwable {
		return sqlSession.insert("EsPJ.getCmtAdds", params);
	}

	@Override
	public int getCmtNotf(HashMap<String, String> params) throws Throwable {
		return sqlSession.insert("EsPJ.getCmtNotf", params);
	}

	@Override
	public int getCmtEdits(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("EsPJ.getCmtEdits", params);
	}

	@Override
	public int getCmtCmtAdds(HashMap<String, String> params) throws Throwable {
		return sqlSession.insert("EsPJ.getCmtCmtAdds", params);
	}

	@Override
	public int getCmtCmtNotf(HashMap<String, String> params) throws Throwable {
		return sqlSession.insert("EsPJ.getCmtCmtNotf", params);
	}

	@Override
	public int getCmtCmtNotf2(HashMap<String, String> params) throws Throwable {
		return sqlSession.insert("EsPJ.getCmtCmtNotf2", params);
	}

	@Override
	public int getCmtDeletes(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("EsPJ.getCmtDeletes", params);
	}

	@Override
	public int getCmtCmtDeletes(HashMap<String, String> params) throws Throwable {
		return sqlSession.update("EsPJ.getCmtCmtDeletes", params);
	}

}
