package com.gdj35.popjourney.web.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gdj35.popjourney.web.Dao.IPopJourneyDao;

@Service
public class PopJourneyService implements IPopJourneyService {
	@Autowired
	public IPopJourneyDao ipjd;
}
