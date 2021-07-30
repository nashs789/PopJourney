package com.gdj35.popjourney.web.Controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.text.SimpleDateFormat;
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
	public ModelAndView travelWriterRank(@RequestParam HashMap<String, String> params, ModelAndView mav)throws Throwable {

		int Pages = 1;
		
		if(params.get("Pages") != null) {
			Pages = Integer.parseInt(params.get("Pages"));
		}
		
		mav.addObject("Pages", Pages);
		
		mav.setViewName("CJM/travelWriterRank");

		return mav;
	}
	
	@RequestMapping(value="/travelWriterRanks", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String travelWriterRanks(@RequestParam HashMap<String, String> params) throws Throwable {
	 
		ObjectMapper mapper = new ObjectMapper();
		 
		Map<String, Object> modelMap = new HashMap<String, Object>();
		 
		int Pages = Integer.parseInt(params.get("Pages"));
		
		int cnt = iJmPopjourneyService.getRankCnt(params);
		
		PagingBean pb = iPagingService.getPagingBean(Pages, cnt, 20, 5);
		
		params.put("startCnt", Integer.toString(pb.getStartCount()));
		params.put("endCnt", Integer.toString(pb.getEndCount()));
		
		List<HashMap<String, String>> list = iJmPopjourneyService.getRankList(params);
		
		modelMap.put("list", list);
		modelMap.put("pb", pb);
		
		System.out.println("MatterParams >> " + params);
		System.out.println("list >> " + list);
		System.out.println("pb >> " + pb);
		System.out.println("cnt >> " + cnt);
		System.out.println("Pages >> " + Pages);
		 
		return mapper.writeValueAsString(modelMap);
	
	}

	// 고객센터-자주 묻는 질문
	@RequestMapping(value = "/clientCenterQuestion")
	public ModelAndView clientCenterQuestion(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {

		mav.setViewName("CJM/clientCenterQuestion");

		return mav;
	}
	
	@RequestMapping(value = "/clientCenterFAQCnt", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String clientCenterFAQCnt(@RequestParam HashMap<String, String> params) throws Throwable {
		
		System.out.println("CNT_Params >> " + params);
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
			
			int FAQCnt = iJmPopjourneyService.FAQCnt(params);
			
			if(FAQCnt > 0) {
			
				int firstCnt = 1;
				int lastCnt = 10;
				int addCnt = 10;
				modelMap.put("firstCnt", firstCnt);
				modelMap.put("lastCnt", lastCnt);
				modelMap.put("addCnt", addCnt);
				modelMap.put("msg", "success");
				modelMap.put("FAQCnt", FAQCnt);
				
				System.out.println("FAQCnt >> " + FAQCnt);
				System.out.println("firstCnt >> " + firstCnt);
				System.out.println("lastCnt >> " + lastCnt);
				System.out.println("addCnt >> " + addCnt);
			} else {
				modelMap.put("msg", "failed");
			}
			
		} catch (Throwable e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		
		return mapper.writeValueAsString(modelMap);
	}
	
	@RequestMapping(value = "/clientCenterFAQList", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String clientCenterFAQList(@RequestParam HashMap<String, String> params) throws Throwable {
		System.out.println("FAQParams >> " + params);
		
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
			
			List<HashMap<String,String>> list = iJmPopjourneyService.FAQList(params);
			
			modelMap.put("firstCnt", Integer.parseInt(params.get("firstCnt")) + Integer.parseInt(params.get("addCnt")));
			modelMap.put("lastCnt", Integer.parseInt(params.get("lastCnt")) + Integer.parseInt(params.get("addCnt")));
			modelMap.put("list", list);
			
			System.out.println("QList >> " + list);
		}catch(Throwable e) {
			e.printStackTrace();
		}
		
		return mapper.writeValueAsString(modelMap);
	}
	

	// 고객센터-문의사항
	@RequestMapping(value = "/clientCenterMatter")
	public ModelAndView clientCenterMatter(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {

		int Pages = 1;
		
		if(params.get("Pages") != null) {
			Pages = Integer.parseInt(params.get("Pages"));
		}
		
		mav.addObject("Pages", Pages);
	
		mav.setViewName("CJM/clientCenterMatter");

		return mav;
		
	}
	
	@RequestMapping(value="/clientCenterMatters", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String clientCenterMatters(@RequestParam HashMap<String, String> params) throws Throwable {

		ObjectMapper mapper = new ObjectMapper();
		 
		Map<String, Object> modelMap = new HashMap<String, Object>();
		 
		int Pages = Integer.parseInt(params.get("Pages"));
		
		int cnt = iJmPopjourneyService.getMatterCnt(params);
		
		PagingBean pb = iPagingService.getPagingBean(Pages, cnt, 20, 5);
		
		params.put("startCnt", Integer.toString(pb.getStartCount()));
		params.put("endCnt", Integer.toString(pb.getEndCount()));
		
		List<HashMap<String, String>> list = iJmPopjourneyService.getMatterList(params);
		
		modelMap.put("list", list);
		modelMap.put("pb", pb);
		
		System.out.println("MatterParams >> " + params);
		System.out.println("list >> " + list);
		System.out.println("pb >> " + pb);
		System.out.println("cnt >> " + cnt);
		System.out.println("Pages >> " + Pages);
		 
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
		HashMap<String, String> cmtDate = iJmPopjourneyService.getCmtDate(params);

		mav.addObject("data", data);
		mav.addObject("cmtDate", cmtDate);
		
		System.out.println("matterDetailParams >> " + params);
		System.out.println("matterDetailData >> " + data);
		System.out.println("matterDetailCmtDate >> " + cmtDate);
		
	
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
			int cnt3 = iJmPopjourneyService.addMatterNotf(params);
			
			System.out.println("CMTParams222 >> " + params);
			
			if(cnt > 0 || cnt2 > 0 || cnt3 > 0) {
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
	
	// 고객센터(문의사항) - 답변수정
		@RequestMapping(value = "/clientCenterMatterDetailCmtUpdates", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String clientCenterMatterDetailCmtUpdates(@RequestParam HashMap<String, String> params) throws Throwable {
			
			ObjectMapper mapper = new ObjectMapper();
			
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			try {
				int cnt = iJmPopjourneyService.updateCmt(params);
				int cnt2 = iJmPopjourneyService.addMatterNotf2(params);
				
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
	
	// 고객센터(문의사항) 회원작성글 수정
	@RequestMapping(value = "/clientCenterMatterUpdate")
	public ModelAndView clientCenterMatterUpdate(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {
		
		HashMap<String, String> data = iJmPopjourneyService.getMatter(params);
		
		mav.addObject("data", data);
		
		mav.setViewName("CJM/clientCenterMatterUpdate");
		
		return mav;
	}
	
	@RequestMapping(value = "/clientCenterMatterUpdates", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String clientCenterMatterUpdate(@RequestParam HashMap<String, String> params) throws Throwable {
	ObjectMapper mapper = new ObjectMapper();
	Map<String, Object> modelMap = new HashMap<String, Object>();
	
		try {
			int cnt = iJmPopjourneyService.updateMatters(params);
			
			if(cnt > 0) {
				modelMap.put("msg", "success");
			} else {
				modelMap.put("msg", "failed");
			}
			
		} catch (Throwable e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
	
		return mapper.writeValueAsString(modelMap);
	}
	
	@RequestMapping(value = "/clientCenterMatterDeletes", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String clientCenterMatterDeletes(@RequestParam HashMap<String, String> params) throws Throwable {
	ObjectMapper mapper = new ObjectMapper();
	Map<String, Object> modelMap = new HashMap<String, Object>();
	
		try {
			int cnt = iJmPopjourneyService.deleteMatter(params);
			
			if(cnt > 0) {
				modelMap.put("msg", "success");
			} else {
				modelMap.put("msg", "failed");
			}
			
		} catch (Throwable e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
	
		return mapper.writeValueAsString(modelMap);
	}
	
	// 매니저 답변 삭제
	@RequestMapping(value = "/clientCenterMatterDetailCmtDeletes", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String clientCenterMatterDetailCmtDeletes(@RequestParam HashMap<String, String> params) throws Throwable {
		
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
			int cnt = iJmPopjourneyService.deleteCmt(params);
			
			if(cnt > 0) {
				modelMap.put("msg", "success");
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
		 
		return mapper.writeValueAsString(modelMap);
	
	}
	
	@RequestMapping(value = "/memAdminDeletes", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String memAdminDeletes(@RequestParam HashMap<String, String> params) throws Throwable {
		
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
			String userNos = (params.get("userNos"));
			String[] arrayUserNos = userNos.split(",");
			for(int i = 0 ; i < arrayUserNos.length ; i++) {
				System.out.println("arrayUserNos[i] >> " + arrayUserNos[i]);
				params.put("userNos", arrayUserNos[i]);
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
	
	
	// 통합검색처리
	@RequestMapping(value = "/search")
	public ModelAndView search(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {
		System.out.println("searchParam >> " + params);
		
		int journalCnt = iJmPopjourneyService.getJournalCnt(params);
		int hashCnt = iJmPopjourneyService.getHashCnt(params);
		int boardCnt = iJmPopjourneyService.getBoardCnt(params);
		int nicCnt = iJmPopjourneyService.getNicCnt(params);
		List<HashMap<String, String>> journalList = iJmPopjourneyService.getJournalList(params);
		List<HashMap<String, String>> hashList = iJmPopjourneyService.getHashList(params);
		List<HashMap<String, String>> boardList = iJmPopjourneyService.getBoardList(params);
		List<HashMap<String, String>> nicList = iJmPopjourneyService.getNicList(params);
		
		mav.addObject("journalCnt", journalCnt);
		mav.addObject("hashCnt", hashCnt);
		mav.addObject("boardCnt", boardCnt);
		mav.addObject("nicCnt", nicCnt);
		mav.addObject("journalList", journalList);
		mav.addObject("hashList", hashList);
		mav.addObject("boardList", boardList);
		mav.addObject("nicList", nicList);
		
		System.out.println("journalList >> " + journalList);
		System.out.println("hashList >> " + hashList);
		System.out.println("boardList >> " + boardList);
		System.out.println("nicList >> " + nicList);
		System.out.println("journalCnt >> " + journalCnt);
		System.out.println("hashCnt >> " + hashCnt);
		System.out.println("boardCnt >> " + boardCnt);
		System.out.println("nicCnt >> " + nicCnt);
		
		mav.setViewName("CJM/search");
		
		return mav;
	}
	
	@RequestMapping(value="/searchs", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody public String searchs(@RequestParam HashMap<String, String>	params) throws Throwable {
	 
		ObjectMapper mapper = new ObjectMapper();
		 
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
			if(Integer.parseInt(params.get("mainSearchFilter")) == 0) {
				int journalCnt = iJmPopjourneyService.getJournalCnt(params);
				int hashCnt = iJmPopjourneyService.getHashCnt(params);
				int boardCnt = iJmPopjourneyService.getBoardCnt(params);
				int nicCnt = iJmPopjourneyService.getNicCnt(params);
				List<HashMap<String, String>> journalList = iJmPopjourneyService.getJournalList(params);
				List<HashMap<String, String>> hashList = iJmPopjourneyService.getHashList(params);
				List<HashMap<String, String>> boardList = iJmPopjourneyService.getBoardList(params);
				List<HashMap<String, String>> nicList = iJmPopjourneyService.getNicList(params);
				modelMap.put("msg", "Filter0");
				
				modelMap.put("journalCnt", journalCnt);
				modelMap.put("hashCnt", hashCnt);
				modelMap.put("boardCnt", boardCnt);
				modelMap.put("nicCnt", nicCnt);
				
				modelMap.put("journalList", journalList);
				modelMap.put("hashList", hashList);
				modelMap.put("boardList", boardList);
				modelMap.put("nicList", nicList);
				
				String txt = params.get("mainSearchTxt");
				String filter = params.get("mainSearchFilter");
				modelMap.put("txt", txt);
				modelMap.put("filter", filter);
				System.out.println("tttttxt >> " + txt);
				System.out.println("ttttfilter >> " + filter);
			} else if(Integer.parseInt(params.get("mainSearchFilter")) == 1) {
				List<HashMap<String, String>> journalList = iJmPopjourneyService.getJournalList(params);
				modelMap.put("msg", "Filter1");
				modelMap.put("journalList", journalList);
			} else if(Integer.parseInt(params.get("mainSearchFilter")) == 2) {
				List<HashMap<String, String>> hashList = iJmPopjourneyService.getHashList(params);
				modelMap.put("msg", "Filter2");
				modelMap.put("hashList", hashList);
			} else if(Integer.parseInt(params.get("mainSearchFilter")) == 3) {
				List<HashMap<String, String>> boardList = iJmPopjourneyService.getBoardList(params);
				modelMap.put("msg", "Filter3");
				modelMap.put("boardList", boardList);
			} else if(Integer.parseInt(params.get("mainSearchFilter")) == 4) {
				List<HashMap<String, String>> nicList = iJmPopjourneyService.getNicList(params);
				modelMap.put("msg", "Filter4");
				modelMap.put("nicList", nicList);
			} else {
				modelMap.put("msg", "failed");
			}
		} catch (Throwable e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		
		System.out.println("ajaxParams >> " + params);
		
		return mapper.writeValueAsString(modelMap);
	
	}
	
	// 통합검색 - 여행일지 검색
	@RequestMapping(value = "/searchTravelDiary")
	public ModelAndView searchTravelDiary(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {

		int Pages = 1;
		
		if(params.get("Pages") != null) {
			Pages = Integer.parseInt(params.get("Pages"));
		}
		
		mav.addObject("Pages", Pages);
		
		mav.setViewName("CJM/searchTravelDiary");

		return mav;
	}
	
	@RequestMapping(value="/searchTravelDiarys", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody public String searchTravelDiarys(@RequestParam HashMap<String, String> params) throws Throwable {
	 
		ObjectMapper mapper = new ObjectMapper();
		 
		Map<String, Object> modelMap = new HashMap<String, Object>();
		 
		int Pages = Integer.parseInt(params.get("Pages"));
		
		int cnt = iJmPopjourneyService.getJournalCnt(params);
		
		PagingBean pb = iPagingService.getPagingBean(Pages, cnt, 15, 5);
		
		params.put("startCnt", Integer.toString(pb.getStartCount()));
		params.put("endCnt", Integer.toString(pb.getEndCount()));
		
		List<HashMap<String, String>> list = iJmPopjourneyService.getJournalDetailList(params);
		
		modelMap.put("list", list);
		modelMap.put("pb", pb);
		modelMap.put("journalCnt", cnt);
		
		System.out.println("params >> " + params);
		System.out.println("list >> " + list);
		System.out.println("pb >> " + pb);
		System.out.println("cnt >> " + cnt);
		System.out.println("Pages >> " + Pages);
		 
		return mapper.writeValueAsString(modelMap);
	
	}
	
	// 통합검색 - 해시태그 검색
	@RequestMapping(value = "/searchHashtag")
	public ModelAndView searchHashtag(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {
		
		int Pages = 1;
		
		if(params.get("Pages") != null) {
			Pages = Integer.parseInt(params.get("Pages"));
		}
		
		mav.addObject("Pages", Pages);
		
		mav.setViewName("CJM/searchHashtag");
		
		return mav;
	}
	
	@RequestMapping(value="/searchHashtags", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody public String searchHashtags(@RequestParam HashMap<String, String> params) throws Throwable {
		
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		int Pages = Integer.parseInt(params.get("Pages"));
		
		int cnt = iJmPopjourneyService.getHashCnt(params);
		
		PagingBean pb = iPagingService.getPagingBean(Pages, cnt, 15, 5);
		
		params.put("startCnt", Integer.toString(pb.getStartCount()));
		params.put("endCnt", Integer.toString(pb.getEndCount()));
		
		List<HashMap<String, String>> list = iJmPopjourneyService.getHashDetailList(params);
		
		modelMap.put("list", list);
		modelMap.put("pb", pb);
		modelMap.put("hashCnt", cnt);
		
		String txt = params.get("mainSearchTxt");
		String filter = params.get("mainSearchFilter");
		modelMap.put("txt", txt);
		modelMap.put("filter", filter);
		System.out.println(txt);
		
		System.out.println("params >> " + params);
		System.out.println("list >> " + list);
		System.out.println("pb >> " + pb);
		System.out.println("cnt >> " + cnt);
		System.out.println("Pages >> " + Pages);
		
		return mapper.writeValueAsString(modelMap);
		
	}
	
	// 통합검색 - 자유게시판 검색
	@RequestMapping(value = "/searchCommunity")
	public ModelAndView searchCommunity(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {
		
		int Pages = 1;
		
		if(params.get("Pages") != null) {
			Pages = Integer.parseInt(params.get("Pages"));
		}
		
		mav.addObject("Pages", Pages);
		
		mav.setViewName("CJM/searchCommunity");
		
		return mav;
	}
	
	@RequestMapping(value="/searchCommunitys", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody public String searchCommunitys(@RequestParam HashMap<String, String> params) throws Throwable {
		
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		int Pages = Integer.parseInt(params.get("Pages"));
		
		int cnt = iJmPopjourneyService.getBoardCnt(params);
		
		PagingBean pb = iPagingService.getPagingBean(Pages, cnt, 20, 5);
		
		params.put("startCnt", Integer.toString(pb.getStartCount()));
		params.put("endCnt", Integer.toString(pb.getEndCount()));
		
		List<HashMap<String, String>> list = iJmPopjourneyService.getBoardDetailList(params);
		
		modelMap.put("list", list);
		modelMap.put("pb", pb);
		modelMap.put("boardCnt", cnt);
		
		System.out.println("params >> " + params);
		System.out.println("list >> " + list);
		System.out.println("pb >> " + pb);
		System.out.println("boardCnt >> " + cnt);
		System.out.println("Pages >> " + Pages);
		
		return mapper.writeValueAsString(modelMap);
		
	}
	
	// 통합검색 - 닉네임 검색
	@RequestMapping(value = "/searchNic")
	public ModelAndView searchNic(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {
		
		int Pages = 1;
		
		if(params.get("Pages") != null) {
			Pages = Integer.parseInt(params.get("Pages"));
		}
		
		mav.addObject("Pages", Pages);
		
		mav.setViewName("CJM/searchNic");
		
		return mav;
	}
	
	@RequestMapping(value="/searchNics", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody public String searchNics(@RequestParam HashMap<String, String> params) throws Throwable {
		
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		int Pages = Integer.parseInt(params.get("Pages"));
		
		int cnt = iJmPopjourneyService.getNicCnt(params);
		
		PagingBean pb = iPagingService.getPagingBean(Pages, cnt, 20, 5);
		
		params.put("startCnt", Integer.toString(pb.getStartCount()));
		params.put("endCnt", Integer.toString(pb.getEndCount()));
		
		List<HashMap<String, String>> list = iJmPopjourneyService.getNicDetailList(params);
		
		modelMap.put("list", list);
		modelMap.put("pb", pb);
		modelMap.put("nicCnt", cnt);
		
		System.out.println("params >> " + params);
		System.out.println("list >> " + list);
		System.out.println("pb >> " + pb);
		System.out.println("nicCnt >> " + cnt);
		System.out.println("Pages >> " + Pages);
		
		return mapper.writeValueAsString(modelMap);
		
	}
	
	// 여행일지 세부페이지
	@RequestMapping(value = "/journal")
	public ModelAndView journal(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {
		System.out.println("journalParams >> " + params);
		// 여행일지 세부페이지의 메인데이터
		HashMap<String, String> data = iJmPopjourneyService.getJournal(params);
		// 여행일지 세부페이지의 메모데이터
		List<HashMap<String, String>> memoData = iJmPopjourneyService.getMemoData(params); 
		// 여행일지 세부페이지의 시퀀스 갯수
		int cnt = iJmPopjourneyService.getSequenceCnt(params);  // 이거 왜 안되지..
		// 여행일지 세부페이지의 해시태그
		List<HashMap<String, String>> hash = iJmPopjourneyService.getHash(params);
		// 좋아요
		HashMap<String, String> likeCheck = iJmPopjourneyService.likeCheck(params);
		// 조회수
		int hit = iJmPopjourneyService.journalHit(params);
		// 북마크 폴더 갯수 체크
		int bmkFolderCnt = iJmPopjourneyService.getBmkFolderCnt(params);
		
		int page = 1;
		
		if(params.get("page") != null) {
			page = Integer.parseInt(params.get("page"));
		}
		
		mav.addObject("data", data);
		mav.addObject("memoData", memoData);
		mav.addObject("cnt", cnt);
		mav.addObject("hash", hash);
		mav.addObject("page", page);
		mav.addObject("likeCheck", likeCheck);
		mav.addObject("bmkFolderCnt", bmkFolderCnt);
		//mav.addObject("journalWriterMemNo", data.get("MEM_NO"));
		
		System.out.println("journalParams >> " + params);
		
		System.out.println("data >> " + data);
		System.out.println("memoData >> " + memoData);
		System.out.println("cnt >> " + cnt);
		System.out.println("hash >> " + hash);
		System.out.println("page >> " + page);
		System.out.println("likeCheck >> " + likeCheck);
		System.out.println("bmkFolderCnt >> " + bmkFolderCnt);
		
		mav.setViewName("CJM/journal");
		
		return mav;
	}
	
	@RequestMapping(value="/journalCmts", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String journalCmts(@RequestParam HashMap<String, String> params) throws Throwable {

		ObjectMapper mapper = new ObjectMapper();
		 
		Map<String, Object> modelMap = new HashMap<String, Object>();
		 
		int page = Integer.parseInt(params.get("page"));
		
		int cmtCnt = iJmPopjourneyService.getCmtCnt(params);
		
		PagingBean pb = iPagingService.getPagingBean(page, cmtCnt, 10, 5);
		
		params.put("startCnt", Integer.toString(pb.getStartCount()));
		params.put("endCnt", Integer.toString(pb.getEndCount()));
		
		// 여행일지 세부페이지의 댓글
		List<HashMap<String, String>> cmt = iJmPopjourneyService.getJournalCmt(params);
		
		modelMap.put("pb", pb);
		modelMap.put("cmt", cmt);
		
		System.out.println("journalCmtsParams >> " + params);
		System.out.println("cmt >> " + cmt);
		 
		return mapper.writeValueAsString(modelMap);
	
	}
	
	@RequestMapping(value="/journalCmtAdds", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String journalCmtAdds(@RequestParam HashMap<String, String> params) throws Throwable {

		ObjectMapper mapper = new ObjectMapper();
		 
		Map<String, Object> modelMap = new HashMap<String, Object>();
		 
		try {
			int cnt = iJmPopjourneyService.getCmtAdds(params);
			int cnt2 = iJmPopjourneyService.getCmtNotf(params);
			
			if(cnt > 0 || cnt2 > 0) {
				modelMap.put("msg", "success");
			} else {
				modelMap.put("msg", "failed");
			}
		} catch (Throwable e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		
		return mapper.writeValueAsString(modelMap);
	
	}
	
	@RequestMapping(value="/journalCmtEdits", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String journalCmtEdits(@RequestParam HashMap<String, String> params) throws Throwable {
		
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
			int cnt = iJmPopjourneyService.getCmtEdits(params);
			
			if(cnt > 0) {
				modelMap.put("msg", "success");
			} else {
				modelMap.put("msg", "failed");
			}
		} catch (Throwable e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		
		return mapper.writeValueAsString(modelMap);
		
	}
	
	@RequestMapping(value="/journalCmtCmtAdds", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String journalCmtCmtAdds(@RequestParam HashMap<String, String> params) throws Throwable {

		ObjectMapper mapper = new ObjectMapper();
		 
		Map<String, Object> modelMap = new HashMap<String, Object>();
		 
		try {
			int cnt = iJmPopjourneyService.getCmtCmtAdds(params);
			int cnt2 = iJmPopjourneyService.getCmtCmtNotf(params);
			int cnt3 = iJmPopjourneyService.getCmtCmtNotf2(params);
			
			if(cnt > 0 || cnt2 > 0 || cnt3 > 0) {
				modelMap.put("msg", "success");
			} else {
				modelMap.put("msg", "failed");
			}
		} catch (Throwable e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		
		return mapper.writeValueAsString(modelMap);
	
	}
	
	@RequestMapping(value="/journalCmtDeletes", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String journalCmtDeletes(@RequestParam HashMap<String, String> params) throws Throwable {

		ObjectMapper mapper = new ObjectMapper();
		 
		Map<String, Object> modelMap = new HashMap<String, Object>();
		 
		try {
			int cnt = iJmPopjourneyService.getCmtDeletes(params);
			
			if(cnt > 0) {
				modelMap.put("msg", "success");
			} else {
				modelMap.put("msg", "failed");
			}
		} catch (Throwable e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		
		return mapper.writeValueAsString(modelMap);
	
	}
	
	@RequestMapping(value="/journalCmtCmtDeletes", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String journalCmtCmtDeletes(@RequestParam HashMap<String, String> params) throws Throwable {
		
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
			int cnt = iJmPopjourneyService.getCmtDeletes(params);
			
			if(cnt > 0) {
				modelMap.put("msg", "success");
			} else {
				modelMap.put("msg", "failed");
			}
		} catch (Throwable e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		
		return mapper.writeValueAsString(modelMap);
		
	}
	
	@RequestMapping(value="/journalgetSequences", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String journalgetSequences(@RequestParam HashMap<String, String> params) throws Throwable {

		ObjectMapper mapper = new ObjectMapper();
		 
		Map<String, Object> modelMap = new HashMap<String, Object>();
		 
		List<HashMap<String, String>> sequence = iJmPopjourneyService.getSequence(params);
		
		modelMap.put("sequence", sequence);
		
		System.out.println("journalgetSequencesParams >> " + params);
		System.out.println("sequence >> " + sequence);
		 
		return mapper.writeValueAsString(modelMap);
	
	}
	
	@RequestMapping(value="/journalDeletes", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String journalDeletes(@RequestParam HashMap<String, String> params) throws Throwable {
		
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
			int cnt = iJmPopjourneyService.getJournalDeletes(params);
			int cnt2 = iJmPopjourneyService.getJournalBmkDeletes(params);
			
			if(cnt > 0 || cnt2 > 0) {
				modelMap.put("msg", "success");
			} else {
				modelMap.put("msg", "failed");
			}
		} catch (Throwable e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		
		return mapper.writeValueAsString(modelMap);
		
	}
	
	@RequestMapping(value = "/journalLikes", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String journalLikes(@RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
			int cnt = iJmPopjourneyService.addLike(params);
			int notf = iJmPopjourneyService.likeNotf(params);
			if(cnt > 0 && notf > 0) {
				modelMap.put("msg", "success");
				System.out.println(params);
			} else {
				modelMap.put("msg", "failed");
			}
			
		} catch (Throwable e) {
			e.printStackTrace();
			modelMap.put("msg","error");
		}
		
		return mapper.writeValueAsString(modelMap);
	}
	@RequestMapping(value = "/journalLikeCancles", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String journalLikeCancles(@RequestParam HashMap<String, String> params, ModelAndView modelAndView) throws Throwable {

		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();

		try {
			int delcnt = iJmPopjourneyService.delLike(params);

			if(delcnt > 0) {
				modelMap.put("msg", "success");
			} else {
				modelMap.put("msg", "failed");
			}
		} catch (Exception e) {
			e.printStackTrace();
			modelMap.put("msg","error");
		}

		return mapper.writeValueAsString(modelMap);
	}
	
	@RequestMapping(value="/journalBmkLists", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String journalBmkLists(@RequestParam HashMap<String, String> params) throws Throwable {

		ObjectMapper mapper = new ObjectMapper();
		 
		Map<String, Object> modelMap = new HashMap<String, Object>();
		 
		List<HashMap<String, String>> bmkList = iJmPopjourneyService.getBmkList(params);
		
		modelMap.put("bmkList", bmkList);
		
		System.out.println("journalBmkListsParams >> " + params);
		System.out.println("bmkList >> " + bmkList);
		 
		return mapper.writeValueAsString(modelMap);
	
	}
	
	@RequestMapping(value = "/journalBmkAdds", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String journalBmkAdds(@RequestParam HashMap<String, String> params, ModelAndView modelAndView) throws Throwable {

		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();

		try {
			int addBmk = iJmPopjourneyService.addBmk(params);

			if(addBmk > 0) {
				modelMap.put("msg", "success");
			} else {
				modelMap.put("msg", "failed");
			}
		} catch (Exception e) {
			e.printStackTrace();
			modelMap.put("msg","error");
		}

		return mapper.writeValueAsString(modelMap);
	}
	
	@RequestMapping(value="/journalGetBmkNos", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String journalGetBmkNos(@RequestParam HashMap<String, String> params) throws Throwable {

		ObjectMapper mapper = new ObjectMapper();
		 
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
			HashMap<String, String> getBmkNo = iJmPopjourneyService.getBmkno(params);
			if(getBmkNo != null) {
				modelMap.put("msg", "nullx");
				modelMap.put("getBmkNo", getBmkNo);
				
				System.out.println("getBmkNo >> " + getBmkNo);
			} else {
				modelMap.put("msg", "nullo");
				modelMap.put("getBmkNo", getBmkNo);
				
				System.out.println("getBmkNo >> " + getBmkNo);
			}
		} catch (Throwable e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		
		
		System.out.println("journalGetBmkNosParams >> " + params);
		
		 
		return mapper.writeValueAsString(modelMap);
	
	}
	
	@RequestMapping(value = "/journalBmkDeletes", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String journalBmkDeletes(@RequestParam HashMap<String, String> params, ModelAndView modelAndView) throws Throwable {

		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();

		try {
			int deleteBmk = iJmPopjourneyService.deleteBmk(params);

			if(deleteBmk > 0) {
				modelMap.put("msg", "success");
			} else {
				modelMap.put("msg", "failed");
			}
		} catch (Exception e) {
			e.printStackTrace();
			modelMap.put("msg","error");
		}

		return mapper.writeValueAsString(modelMap);
	}
	

}
