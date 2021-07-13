package com.gdj35.popjourney.web.Service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gdj35.popjourney.web.Dao.IEsPopjourneyDao;

@Service
public class EsPopjourneyService implements IEsPopjourneyService {
	@Autowired IEsPopjourneyDao iEsPopjourneyDao;


}
