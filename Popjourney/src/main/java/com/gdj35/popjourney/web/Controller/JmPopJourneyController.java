package com.gdj35.popjourney.web.Controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import com.gdj35.popjourney.web.Service.IJmPopjourneyService;

@Controller
public class JmPopJourneyController {
	@Autowired
	public IJmPopjourneyService iJmPopjourneyService;

	@Autowired
	public IPagingService iPagingService;

	// 여행작가랭킹
	@RequestMapping(value = "/travelWriterRank")
	public ModelAndView travelWriterRank(@RequestParam HashMap<String, String> params, ModelAndView mav)
			throws Throwable {

		mav.setViewName("CJM/travelWriterRank");

		return mav;
	}

	// 고객센터-자주 묻는 질문
	@RequestMapping(value = "/clientCenterQuestion")
	public ModelAndView clientCenterQuestion(@RequestParam HashMap<String, String> params, ModelAndView mav)
			throws Throwable {

		mav.setViewName("CJM/clientCenterQuestion");

		return mav;
	}

	// 고객센터-문의사항
	@RequestMapping(value = "/clientCenterMatter")
	public ModelAndView clientCenterMatter(@RequestParam HashMap<String, String> params, ModelAndView mav)
			throws Throwable {

		mav.setViewName("CJM/clientCenterMatter");

		return mav;
	}

	// 내부관리자-회원관리
	@RequestMapping(value = "/memAdmin")
	public ModelAndView memAdmin(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {

		int page = 1;
		int sortGbn = 0;
		int sexGbn = 1;

		if (params.get("page") != null) {
			page = Integer.parseInt(params.get("page"));
		}
		
		if (params.get("sortGbn") != null) {
			page = Integer.parseInt(params.get("sortGbn"));
		}
	
		if (params.get("sexGbn") != null) {
			page = Integer.parseInt(params.get("sexGbn"));
		}

		mav.addObject("page", page);
		mav.addObject("sortGbn", sortGbn);
		mav.addObject("sexGbn", sexGbn);

		mav.setViewName("CJM/memAdmin");

		return mav;
	}
	
	@RequestMapping(value="/memAdmins", method = RequestMethod.POST, produces =	"text/json;charset=UTF-8")
	@ResponseBody public String memAdmins(@RequestParam HashMap<String, String>	params) throws Throwable {
	 
		ObjectMapper mapper = new ObjectMapper();
		 
		Map<String, Object> modelMap = new HashMap<String, Object>();
		 
		int page = Integer.parseInt(params.get("page"));
		
		int cnt = iJmPopjourneyService.getMemCnt(params);
		
		PagingBean pb = iPagingService.getPagingBean(page, cnt, 20, 5);
		
		params.put("startCnt", Integer.toString(pb.getStartCount()));
		params.put("endCnt", Integer.toString(pb.getEndCount()));
		
		List<HashMap<String, String>> list = iJmPopjourneyService.getMemList(params);
		
		//현재날짜 취득
		String dateForm = "yyyy-MM-dd";
		SimpleDateFormat sdf = new SimpleDateFormat(dateForm);
		String today = sdf.format(new Date());
		String startDay = "2021-01-01";
		
		// 회원관리 오/내림차순 공통 (0:기본, 1:성별, 2:나이, 3:등급, 4:가입일, 5:탈퇴일, 6:게시글, 7:좋아요, 8:팔로워, 9:누적신고, 10:접속수)
		int sortGbn = Integer.parseInt(params.get("sortGbn"));
		modelMap.put("sortGbn", sortGbn);
		
		// 회원관리 - 오름차순/내림차순 -> 성별  sex=1(남자) sex=2(여자)
		int sexGbn = Integer.parseInt(params.get("sexGbn"));
		//List<HashMap<String, String>> sex = iJmPopjourneyService.getSex(params);
		modelMap.put("sexGbn", sexGbn);
			
		modelMap.put("list", list);
		modelMap.put("pb", pb);
		modelMap.put("today", today);
		modelMap.put("startDay", startDay);
		
		System.out.println("params >> " + params);
		System.out.println("list >> " + list); System.out.println("pb >> " + pb);
		System.out.println("cnt >> " + cnt); System.out.println("page >> " + page);
		System.out.println("params >> " + params);
		System.out.println("startDay >> " + startDay);
		System.out.println("today >> " + today);
		System.out.println("sex >> " + sexGbn);
		System.out.println("sortGbn >>" + sortGbn);
		 
		return mapper.writeValueAsString(modelMap);
	
	}
	
	@RequestMapping(value = "/memAdminDeletes", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String memAdminDeletes(@RequestParam ArrayList<Integer> dMemNo) throws Throwable {
		
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> modelMap = new HashMap<String, Object>();

		
		try {
			int cnt = iJmPopjourneyService.deleteMem(dMemNo);
			
			if(cnt > 0) {
				modelMap.put("msg", "success");
			} else {
				modelMap.put("msg", "failed");
			}
		} catch (Throwable e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		System.out.println("dMemNo >> " + dMemNo);
		return mapper.writeValueAsString(modelMap);
		
	}
	
	// 내부관리자-여행일지
	@RequestMapping(value = "/TravelDiaryAdmin")
	public ModelAndView TravelDiaryAdmin(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {
		
		int page = 1;
		
		if(params.get("page") != null) {
			page = Integer.parseInt(params.get("page"));
		}
		
		mav.addObject("page", page);
		
		mav.setViewName("CJM/TravelDiaryAdmin");

		return mav;
	}
	
	@RequestMapping(value="/TravelDiaryAdmins", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody public String TravelDiaryAdmins(@RequestParam HashMap<String, String> params) throws Throwable {
	 
		ObjectMapper mapper = new ObjectMapper();
		 
		Map<String, Object> modelMap = new HashMap<String, Object>();
		 
		int page = Integer.parseInt(params.get("page"));
		
		int cnt = iJmPopjourneyService.getTravelDiaryCnt(params);
		
		PagingBean pb = iPagingService.getPagingBean(page, cnt, 20, 5);
		
		params.put("startCnt", Integer.toString(pb.getStartCount()));
		params.put("endCnt", Integer.toString(pb.getEndCount()));
		
		System.out.println("params >> " + params);
		List<HashMap<String, String>> list = iJmPopjourneyService.travelDiaryList(params);
		
		//현재날짜 취득
		String dateForm = "yyyy-MM-dd";
		SimpleDateFormat sdf = new SimpleDateFormat(dateForm);
		String today = sdf.format(new Date());
		String startDay = "2021-01-01";
		
		modelMap.put("list", list);
		modelMap.put("pb", pb);
		modelMap.put("today", today);
		modelMap.put("startDay", startDay);
		
		System.out.println("params >> " + params);
		System.out.println("list >> " + list);
		System.out.println("pb >> " + pb);
		System.out.println("cnt >> " + cnt);
		System.out.println("page >> " + page);
		System.out.println("startDay >> " + startDay);
		System.out.println("today >> " + today);
		 
		return mapper.writeValueAsString(modelMap);
	
	}

	// 내부관리자-자유게시판
	@RequestMapping(value = "/communityAdmin")
	public ModelAndView communityAdmin(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {

		int page = 1;
		
		if(params.get("page") != null) {
			page = Integer.parseInt(params.get("page"));
		}
		
		mav.addObject("page", page);
		
		mav.setViewName("CJM/communityAdmin");

		return mav;
	}
	
	@RequestMapping(value="/communityAdmins", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody public String communityAdmins(@RequestParam HashMap<String, String> params) throws Throwable {
	 
		ObjectMapper mapper = new ObjectMapper();
		 
		Map<String, Object> modelMap = new HashMap<String, Object>();
		 
		int page = Integer.parseInt(params.get("page"));
		
		int cnt = iJmPopjourneyService.getCommunityCnt(params);
		
		PagingBean pb = iPagingService.getPagingBean(page, cnt, 20, 5);
		
		params.put("startCnt", Integer.toString(pb.getStartCount()));
		params.put("endCnt", Integer.toString(pb.getEndCount()));
		
		System.out.println("params >> " + params);
		List<HashMap<String, String>> list = iJmPopjourneyService.communityList(params);
		
		//현재날짜 취득
		String dateForm = "yyyy-MM-dd";
		SimpleDateFormat sdf = new SimpleDateFormat(dateForm);
		String today = sdf.format(new Date());
		String startDay = "2021-01-01";
		
		modelMap.put("list", list);
		modelMap.put("pb", pb);
		modelMap.put("today", today);
		modelMap.put("startDay", startDay);
		
		System.out.println("params >> " + params);
		System.out.println("list >> " + list);
		System.out.println("pb >> " + pb);
		System.out.println("cnt >> " + cnt);
		System.out.println("page >> " + page);
		System.out.println("startDay >> " + startDay);
		System.out.println("today >> " + today);
		 
		return mapper.writeValueAsString(modelMap);
	
	}

	// 내부관리자-공지관리
	@RequestMapping(value = "/noticeAdmin")
	public ModelAndView noticeAdmin(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {

		int page = 1;
		
		if(params.get("page") != null) {
			page = Integer.parseInt(params.get("page"));
		}
		
		mav.addObject("page", page);
		
		mav.setViewName("CJM/noticeAdmin");

		return mav;
	}
	
	@RequestMapping(value="/noticeAdmins", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody public String noticeAdmins(@RequestParam HashMap<String, String> params) throws Throwable {
	 
		ObjectMapper mapper = new ObjectMapper();
		 
		Map<String, Object> modelMap = new HashMap<String, Object>();
		 
		int page = Integer.parseInt(params.get("page"));
		
		int cnt = iJmPopjourneyService.getNoticeCnt(params);
		
		PagingBean pb = iPagingService.getPagingBean(page, cnt, 20, 5);
		
		params.put("startCnt", Integer.toString(pb.getStartCount()));
		params.put("endCnt", Integer.toString(pb.getEndCount()));
		
		List<HashMap<String, String>> list = iJmPopjourneyService.noticeList(params);
		
		//현재날짜 취득
		String dateForm = "yyyy-MM-dd";
		SimpleDateFormat sdf = new SimpleDateFormat(dateForm);
		String today = sdf.format(new Date());
		String startDay = "2021-01-01";
		
		modelMap.put("list", list);
		modelMap.put("pb", pb);
		modelMap.put("today", today);
		modelMap.put("startDay", startDay);
		
		System.out.println("params >> " + params);
		System.out.println("list >> " + list);
		System.out.println("pb >> " + pb);
		System.out.println("cnt >> " + cnt);
		System.out.println("page >> " + page);
		System.out.println("startDay >> " + startDay);
		System.out.println("today >> " + today);
		 
		return mapper.writeValueAsString(modelMap);
	
	}

	// 내부관리자-신고관리
	@RequestMapping(value = "/reportAdmin")
	public ModelAndView reportAdmin(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {

		mav.setViewName("CJM/reportAdmin");

		return mav;
	}

}
