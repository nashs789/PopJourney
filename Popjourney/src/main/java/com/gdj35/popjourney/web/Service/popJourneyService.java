package com.gdj35.popjourney.web.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gdj35.popjourney.web.Dao.IpopJourneyDao;

@Service
public class popJourneyService implements IpopJourneyService {
	@Autowired
	public IpopJourneyDao ipjd;
}
