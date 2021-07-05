package com.gdj35.popjourney.web.Dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class JmPopjourneyDao implements IJmPopjourneyDao {
	@Autowired SqlSession sqlSession;

}
