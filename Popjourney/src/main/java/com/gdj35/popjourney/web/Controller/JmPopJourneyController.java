package com.gdj35.popjourney.web.Controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gdj35.popjourney.web.Service.IJmPopjourneyService;

@Controller
public class JmPopJourneyController {
	@Autowired 
	public IJmPopjourneyService iJmPopjourneyService;
	
	@RequestMapping(value = "/memAdmin")
	public ModelAndView memAdmin(@RequestParam HashMap<String, String> params,
								 ModelAndView mav) throws Throwable {
		
		mav.setViewName("memAdmin");
		
		return mav;
	}
	

}
