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

	// 마이페이지 북마크
	@RequestMapping(value = "/myPageBMK")
	public ModelAndView myPageBMK(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {

		mav.setViewName("LES/myPageBMK");

		return mav;

	}

	// 마이페이지 팔로워
	@RequestMapping(value = "/myPageFollower")
	public ModelAndView myPageFollower(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {

		mav.setViewName("LES/myPageFollower");

		return mav;

	}

	// 마이페이지 팔로잉
	@RequestMapping(value = "/myPageFollowing")
	public ModelAndView myPageFollowing(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {

		mav.setViewName("LES/myPageFollowing");

		return mav;

	}
	
	// 다른 사용자 페이지
	@RequestMapping(value = "/userPage")
	public ModelAndView userPage(@RequestParam HashMap<String, String> params, ModelAndView mav)
			throws Throwable {
		int page = 1;
		if (params.get("page") != null) {
			page = Integer.parseInt(params.get("page"));
		}
		mav.addObject("page", page);
		
		mav.addObject("userNo", params.get("userNo"));
		mav.setViewName("LES/userPage");

		return mav;

	}
	
	// 여행 게시판
	@RequestMapping(value = "/journalBoard")
	public ModelAndView journalBoard(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {

		mav.setViewName("LES/journalBoard");

		return mav;

	}

	// 여행 일지 상세페이지
	@RequestMapping(value = "/journal")
	public ModelAndView journal(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {

		mav.setViewName("LES/journal");

		return mav;

	}

	// 여행 일지 작성 페이지
	@RequestMapping(value = "/journalWrite")
	public ModelAndView journalWrite(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {

		mav.setViewName("LES/journalWrite");

		return mav;

	}

	// 자유게시판
	@RequestMapping(value = "/community")
	public ModelAndView community(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {

		mav.setViewName("LES/community");

		return mav;

	}

	// 게시글 상세페이지
	@RequestMapping(value = "/post")
	public ModelAndView post(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {

		mav.setViewName("LES/post");

		return mav;

	}

	// 게시글 작성 페이지
	@RequestMapping(value = "/postWrite")
	public ModelAndView postWrite(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {

		mav.setViewName("LES/postWrite");

		return mav;

		}
	
	

}