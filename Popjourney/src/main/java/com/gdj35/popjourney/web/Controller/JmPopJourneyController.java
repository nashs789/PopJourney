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
	
	// 내부관리자-회원관리
	@RequestMapping(value="/memAdmin")
	public ModelAndView memAdmin(@RequestParam HashMap<String, String> params,
								 ModelAndView mav) throws Throwable {
		
		mav.setViewName("memAdmin");
		
		return mav;
	}
	
	// 내부관리자-여행일지
	@RequestMapping(value="/TravelDiaryAdmin")
	public ModelAndView TravelDiaryAdmin(@RequestParam HashMap<String, String> params,
										 ModelAndView mav) throws Throwable {
		
		mav.setViewName("TravelDiaryAdmin");
		
		return mav;
	}
	
	// 내부관리자-자유게시판
		@RequestMapping(value="/communityAdmin")
		public ModelAndView communityAdmin(@RequestParam HashMap<String, String> params,
										   ModelAndView mav) throws Throwable {
		
		mav.setViewName("communityAdmin");
		
		return mav;
	}
		
	// 내부관리자-공지관리
	@RequestMapping(value="/noticeAdmin")
	public ModelAndView noticeAdmin(@RequestParam HashMap<String, String> params,
									ModelAndView mav) throws Throwable {
		
		mav.setViewName("noticeAdmin");
		
		return mav;
	}
	
	// 내부관리자-신고관리
	@RequestMapping(value="/reportAdmin")
	public ModelAndView reportAdmin(@RequestParam HashMap<String, String> params,
									ModelAndView mav) throws Throwable {
		
		mav.setViewName("reportAdmin");
		
		return mav;
	}
	

}
