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

		if (params.get("page") != null) {
			page = Integer.parseInt(params.get("page"));
		}

		mav.addObject("page", page);

		mav.setViewName("CJM/memAdmin");

		return mav;
	}

	
	@RequestMapping(value="/memAdmins", method = RequestMethod.POST, produces =
	"text/json;charset=UTF-8")
	
	@ResponseBody public String memAdmins(@RequestParam HashMap<String, String>
	params) throws Throwable {
	 
		ObjectMapper mapper = new ObjectMapper();
		 
		Map<String, Object> modelMap = new HashMap<String, Object>();
		 
		System.out.println(params);
		
		int page = Integer.parseInt(params.get("page"));
		
		int cnt = iJmPopjourneyService.getMemCnt(params);
		
		PagingBean pb = iPagingService.getPagingBean(page, cnt, 20, 5);
		
		params.put("startCnt", Integer.toString(pb.getStartCount()));
		params.put("endCnt", Integer.toString(pb.getEndCount()));
		
		List<HashMap<String, String>> list = iJmPopjourneyService.getMemList(params);
		
		modelMap.put("list", list); modelMap.put("pb", pb);
		
		System.out.println("list >> " + list); System.out.println("pb >> " + pb);
		System.out.println("cnt >> " + cnt); System.out.println("page >> " + page);
		System.out.println("params >> " + params);
		 
		return mapper.writeValueAsString(modelMap);
	
	}
	 
	// 내부관리자-여행일지
	@RequestMapping(value = "/TravelDiaryAdmin")
	public ModelAndView TravelDiaryAdmin(@RequestParam HashMap<String, String> params, ModelAndView mav)
			throws Throwable {

		mav.setViewName("CJM/TravelDiaryAdmin");

		return mav;
	}

	// 내부관리자-자유게시판
	@RequestMapping(value = "/communityAdmin")
	public ModelAndView communityAdmin(@RequestParam HashMap<String, String> params, ModelAndView mav)
			throws Throwable {

		mav.setViewName("CJM/communityAdmin");

		return mav;
	}

	// 내부관리자-공지관리
	@RequestMapping(value = "/noticeAdmin")
	public ModelAndView noticeAdmin(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {

		mav.setViewName("CJM/noticeAdmin");

		return mav;
	}

	// 내부관리자-신고관리
	@RequestMapping(value = "/reportAdmin")
	public ModelAndView reportAdmin(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {

		mav.setViewName("CJM/reportAdmin");

		return mav;
	}

}
