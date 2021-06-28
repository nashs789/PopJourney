package com.gdj35.popjourney.web.Dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class popJourneyDao implements IpopJourneyDao {
	@Autowired
	public SqlSession sql;
}
