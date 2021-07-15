package com.gdj35.popjourney.web.Controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
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
	
	@RequestMapping(value="/travelWriterRanks", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String travelWriterRanks(@RequestParam HashMap<String, String> params) throws Throwable {
	 
		ObjectMapper mapper = new ObjectMapper();
		 
		Map<String, Object> modelMap = new HashMap<String, Object>();
		 
		int page = Integer.parseInt(params.get("page"));
		
		int cnt = iJmPopjourneyService.getRankCnt(params);
		
		PagingBean pb = iPagingService.getPagingBean(page, cnt, 20, 5);
		
		params.put("startCnt", Integer.toString(pb.getStartCount()));
		params.put("endCnt", Integer.toString(pb.getEndCount()));
		
		List<HashMap<String, String>> list = iJmPopjourneyService.getRankList(params);
		
		modelMap.put("list", list);
		modelMap.put("pb", pb);
		
		System.out.println("MatterParams >> " + params);
		System.out.println("list >> " + list);
		System.out.println("pb >> " + pb);
		System.out.println("cnt >> " + cnt);
		System.out.println("page >> " + page);
		 
		return mapper.writeValueAsString(modelMap);
	
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
	public ModelAndView clientCenterMatter(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {

		int page = 1;
		
		if(params.get("page") != null) {
			page = Integer.parseInt(params.get("page"));
		}
		
		mav.addObject("page", page);
	
		mav.setViewName("CJM/clientCenterMatter");

		return mav;
		
	}
	
	@RequestMapping(value="/clientCenterMatters", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String clientCenterMatters(@RequestParam HashMap<String, String> params) throws Throwable {

		ObjectMapper mapper = new ObjectMapper();
		 
		Map<String, Object> modelMap = new HashMap<String, Object>();
		 
		int page = Integer.parseInt(params.get("page"));
		
		int cnt = iJmPopjourneyService.getMatterCnt(params);
		
		PagingBean pb = iPagingService.getPagingBean(page, cnt, 20, 5);
		
		params.put("startCnt", Integer.toString(pb.getStartCount()));
		params.put("endCnt", Integer.toString(pb.getEndCount()));
		
		List<HashMap<String, String>> list = iJmPopjourneyService.getMatterList(params);
		
		modelMap.put("list", list);
		modelMap.put("pb", pb);
		
		System.out.println("MatterParams >> " + params);
		System.out.println("list >> " + list);
		System.out.println("pb >> " + pb);
		System.out.println("cnt >> " + cnt);
		System.out.println("page >> " + page);
		 
		return mapper.writeValueAsString(modelMap);
	
	}
	
	// 고객센터-문의사항(작성)
	@RequestMapping(value = "/clientCenterMatterWrite")
	public ModelAndView testABWrite(ModelAndView mav) {
		
		mav.setViewName("CJM/clientCenterMatterWrite");
		
		return mav;
	}
	
	// 고객센터-문의사항(작성)
	@RequestMapping(value = "/clientCenterMatterWrites", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String clientCenterMatterWrites(@RequestParam HashMap<String, String> params) throws Throwable {
		System.out.println("wParams >> " + params);
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
			int cnt = iJmPopjourneyService.addMatterWrite(params);
			
			if(cnt > 0) {
				modelMap.put("msg", "success");
				//modelMap.put("writeMemNo", params.get("memNo"));
			} else {
				modelMap.put("msg", "failed");
			}
			
		} catch (Throwable e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		
		return mapper.writeValueAsString(modelMap);
	}
	
	// 고객센터(문의사항) - 세부
	@RequestMapping(value = "/clientCenterMatterDetail")
	public ModelAndView clientCenterMatterDetail(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {
		
		HashMap<String, String> data = iJmPopjourneyService.getMatter(params);

		mav.addObject("data", data);
		
		System.out.println("matterDetailParams >> " + params);
		System.out.println("matterDetailData >> " + data);
	
		mav.setViewName("CJM/clientCenterMatterDetail");
		
		return mav;
	}
	
	// 고객센터(문의사항) - 답변
	@RequestMapping(value = "/clientCenterMatterDetailCmt", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String clientCenterMatterDetailCmt(@RequestParam HashMap<String, String> params) throws Throwable {
		
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
			int cnt = iJmPopjourneyService.writeCmt(params);
			int cnt2 = iJmPopjourneyService.updateMatter(params);
			
			System.out.println("CMTParams >> " + params);
			
			if(cnt > 0 || cnt2 > 0) {
				modelMap.put("msg", "success");
				modelMap.put("cmt_contents", params.get("cmt_contents"));
			} else {
				modelMap.put("msg", "failed");
			}
		} catch (Throwable e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		
		return mapper.writeValueAsString(modelMap);
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
		System.out.println("list >> " + list);
		System.out.println("pb >> " + pb);
		System.out.println("cnt >> " + cnt);
		System.out.println("page >> " + page);
		System.out.println("params >> " + params);
		System.out.println("startDay >> " + startDay);
		System.out.println("today >> " + today);
		System.out.println("sex >> " + sexGbn);
		System.out.println("sortGbn >>" + sortGbn);
		 
		return mapper.writeValueAsString(modelMap);
	
	}
	
	@RequestMapping(value = "/memAdminDeletes", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String memAdminDeletes(@RequestParam HashMap<String, String> params) throws Throwable {
		
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
			String userNo = (params.get("userNo"));
			String[] arrayUserNo = userNo.split(",");
			for(int i = 0 ; i < arrayUserNo.length ; i++) {
				System.out.println("arrayUserNo[i] >> " + arrayUserNo[i]);
				params.put("userNo", arrayUserNo[i]);
				// 탈퇴일
				int cnt = iJmPopjourneyService.deleteMem(params);
				
				// 여행일지
				//int cnt2 = iJmPopjourneyService.deleteJournal(params);
				// 여행일지 댓글
				//int cnt3 = iJmPopjourneyService.deleteJournalCmt(params);
				// 게시판
				//int cnt4 = iJmPopjourneyService.deleteBoard(params);
				// 게시판 댓글
				//int cnt5 = iJmPopjourneyService.deleteBoardCmt(params);
				
				if(cnt > 0) {
					modelMap.put("msg", "success");
				} else {
					modelMap.put("msg", "failed");
				}
			}
			
		} catch (Throwable e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		//System.out.println("userNo >> " + userNo);
		//System.out.println("arrayUserNo >> " + Arrays.toString(arrayUserNo));
		
		System.out.println("delParams >> " + params);
		return mapper.writeValueAsString(modelMap);
		
	}
	
	@RequestMapping(value="/memGrade", method = RequestMethod.POST, produces =	"text/json;charset=UTF-8")
	@ResponseBody public String memGrade(@RequestParam HashMap<String, String>	params) throws Throwable {
	 
		ObjectMapper mapper = new ObjectMapper();
		 
		Map<String, Object> modelMap = new HashMap<String, Object>();
		 
		System.out.println("params >> " + params);
		 
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
	
	@RequestMapping(value = "/TravelDiaryAdminsDeletes", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String TravelDiaryAdminsDeletes(@RequestParam HashMap<String, String> params) throws Throwable {
		
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
			String journalNo = (params.get("journalNo"));
			String[] arrayJournalNo = journalNo.split(",");
			for(int i = 0 ; i < arrayJournalNo.length ; i++) {
				System.out.println("arrayJournalNo[i] >> " + arrayJournalNo[i]);
				params.put("journalNo", arrayJournalNo[i]);
				
				// 게시글 DEL 1 -> 0
				int cnt = iJmPopjourneyService.deleteJournal(params);
				// 게시글댓글 DEL 1 -> 0
				int cnt2 = iJmPopjourneyService.deleteJournalCmt(params);
				
				if(cnt > 0 || cnt2 > 0) {
					modelMap.put("msg", "success");
				} else {
					modelMap.put("msg", "failed");
				}
				System.out.println("journalNo >> " + journalNo);
				System.out.println("arrayJournalNo >> " + Arrays.toString(arrayJournalNo));
			}
			
		} catch (Throwable e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		
		System.out.println("delParams >> " + params);
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
	
	@RequestMapping(value = "/communityAdminsDeletes", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String communityAdminsDeletes(@RequestParam HashMap<String, String> params) throws Throwable {
		
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
			String postNo = (params.get("postNo"));
			String[] arrayPostNo = postNo.split(",");
			for(int i = 0 ; i < arrayPostNo.length ; i++) {
				System.out.println("arrayJournalNo[i] >> " + arrayPostNo[i]);
				params.put("postNo", arrayPostNo[i]);
				
				// 게시글 DEL 1 -> 0
				int cnt = iJmPopjourneyService.deletePost(params);
				// 게시글댓글 DEL 1 -> 0
				int cnt2 = iJmPopjourneyService.deletePostCmt(params);
				
				if(cnt > 0 || cnt2 > 0) {
					modelMap.put("msg", "success");
				} else {
					modelMap.put("msg", "failed");
				}
				System.out.println("postNo >> " + postNo);
				System.out.println("arrayPostNo >> " + Arrays.toString(arrayPostNo));
			}
			
		} catch (Throwable e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		
		System.out.println("delParams >> " + params);
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
	
	@RequestMapping(value = "/noticeAdminsDeletes", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String noticeAdminsDeletes(@RequestParam HashMap<String, String> params) throws Throwable {
		
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
			String postNo = (params.get("postNo"));
			String[] arrayPostNo = postNo.split(",");
			for(int i = 0 ; i < arrayPostNo.length ; i++) {
				System.out.println("arrayJournalNo[i] >> " + arrayPostNo[i]);
				params.put("postNo", arrayPostNo[i]);
				
				// 공지 DEL 1 -> 0
				int cnt = iJmPopjourneyService.deletePost(params);
				// 공지 댓글 DEL 1 -> 0
				int cnt2 = iJmPopjourneyService.deletePostCmt(params);
				
				if(cnt > 0 || cnt2 > 0) {
					modelMap.put("msg", "success");
				} else {
					modelMap.put("msg", "failed");
				}
				System.out.println("postNo >> " + postNo);
				System.out.println("arrayPostNo >> " + Arrays.toString(arrayPostNo));
			}
			
		} catch (Throwable e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		
		System.out.println("delParams >> " + params);
		return mapper.writeValueAsString(modelMap);
		
	}

	// 내부관리자-신고관리
	@RequestMapping(value = "/reportAdmin")
	public ModelAndView reportAdmin(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {

		int page = 1;
		
		if(params.get("page") != null) {
			page = Integer.parseInt(params.get("page"));
		}
		
		mav.addObject("page", page);
		
		mav.setViewName("CJM/reportAdmin");

		return mav;
	}
	
	@RequestMapping(value="/reportAdmins", method = RequestMethod.POST, produces =	"text/json;charset=UTF-8")
	@ResponseBody public String reportAdmins(@RequestParam HashMap<String, String>	params) throws Throwable {
	 
		ObjectMapper mapper = new ObjectMapper();
		 
		Map<String, Object> modelMap = new HashMap<String, Object>();
		 
		int page = Integer.parseInt(params.get("page"));
		
		int cnt = iJmPopjourneyService.getReportCnt(params);
		
		PagingBean pb = iPagingService.getPagingBean(page, cnt, 20, 5);
		
		params.put("startCnt", Integer.toString(pb.getStartCount()));
		params.put("endCnt", Integer.toString(pb.getEndCount()));
		
		List<HashMap<String, String>> list = iJmPopjourneyService.getReportList(params);
		
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
	

}
