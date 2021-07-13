package com.gdj35.popjourney.web.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.gdj35.popjourney.common.bean.PagingBean;
import com.gdj35.popjourney.common.service.IPagingService;
import com.gdj35.popjourney.web.Service.IEsPopjourneyService;

@Controller
public class EsPopJourneyController {
	@Autowired
	public IEsPopjourneyService iEsPopjourneyService;

	@Autowired
	public IPagingService iPagingService;
	
	// 마이페이지 썸네일
	@RequestMapping(value = "/myPage")
	public ModelAndView myPage(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {
		int page = 1;
		if (params.get("page") != null) {
			page = Integer.parseInt(params.get("page"));
		}
		mav.addObject("page", page);
		mav.setViewName("LES/myPage");

		return mav;
	}
	
	//마이페이지 북마크
	@RequestMapping(value = "/myPageBMK")
	public ModelAndView myPageBMK(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {
		
		mav.setViewName("LES/myPageBMK");
		
		return mav;
	
	}
	
	//
}