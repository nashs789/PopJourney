package com.gdj35.popjourney.web.Controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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
import com.gdj35.popjourney.util.Utils;
import com.gdj35.popjourney.web.Service.ICJMMService;

@Controller
public class CJMMController {
	@Autowired
	public ICJMMService iCJMMService;
	
	@Autowired
	public IPagingService iPagingService;
	
	// 로그인
	@RequestMapping(value = "/CJMLogin")
	public ModelAndView CJMLogin(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {		
		
		 mav.setViewName("CJM/CJMLogin");

		return mav;
	}
	@RequestMapping(value = "/CJMLogins", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String CJMLogins(HttpSession session, @RequestParam HashMap<String, String> params) throws Throwable {
		
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		// loginInfo로 넘어오는 키: MEM_NO, GRADE_NO, NIC, LAST_DATE, TODAY
		SimpleDateFormat simpleD = new SimpleDateFormat("yyyy-MM-dd");
		
		//암호화
		params.put("inputPW", Utils.encryptAES128(params.get("inputPW")));
	
		HashMap<String, String> loginInfo = iCJMMService.login(params);
		try {
			if (loginInfo != null) {
				Date lastDate = simpleD.parse(loginInfo.get("LAST_DATE"));
				Date today = simpleD.parse(loginInfo.get("TODAY"));
	
				params.put("MEM_NO", String.valueOf(loginInfo.get("MEM_NO")));
				
				if (lastDate.compareTo(today) < 0) {
					iCJMMService.accCnt(params);
				}
				
				session.setAttribute("sMEM_NO", loginInfo.get("MEM_NO"));
				session.setAttribute("sGRADE_NO", loginInfo.get("GRADE_NO"));
				session.setAttribute("sNIC", loginInfo.get("NIC"));
				session.setAttribute("sPHOTO_PATH", loginInfo.get("PHOTO_PATH"));
				session.setAttribute("sINTRO", loginInfo.get("INTRO"));
	
				HashMap<String, String> data = iCJMMService.getNumber(params);
	
				session.setAttribute("sFOLLOWER", data.get("FOLLOWER_CNT")); //팔로워 숫자
				session.setAttribute("sFOLLOWING", data.get("FOLLOWING_CNT")); //팔로잉 숫자
				session.setAttribute("sBMK", data.get("BMK_JOURNAL_CNT")); //북마크 안에 일지 숫자
				session.setAttribute("sJOURNAL", data.get("JOURNAL_CNT")); //작성한 일지 숫자
				session.setAttribute("sPOINT", data.get("TOTAL_POINT")); //여행작가 점수
	
				modelMap.put("msg", "success");
			} else {
				modelMap.put("msg", "failed");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mapper.writeValueAsString(modelMap);
	}
	
	// 로그아웃
	@RequestMapping(value = "/CJMLogouts", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String CJMLogouts(HttpSession session) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();

		session.invalidate();

		return mapper.writeValueAsString(modelMap);
	}
	
	// 마이페이지 썸네일
	@RequestMapping(value = "/CJMMyPage")
	public ModelAndView CJMMyPage(@RequestParam HashMap<String, String> params, ModelAndView mav, HttpSession session) throws Throwable {		
		
		if(session.getAttribute("sMEM_NO") != null) {
			mav.setViewName("CJM/CJMMyPage");
		} else {
			mav.setViewName("redirect:CJMLogin");
		}
		return mav;
	}
	
	//마이 페이지 일지 가져오기
	@RequestMapping(value = "/CJMMyPageJournals", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String CJMMyPageJournals(@RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();

		int page = Integer.parseInt(params.get("page"));
		int cnt = iCJMMService.journalCnt(params);
		
		PagingBean pb = iPagingService.getPagingBean(page, cnt, 5, 1);

		params.put("startCnt", Integer.toString(pb.getStartCount()));
		params.put("endCnt", Integer.toString(pb.getEndCount()));

		try {
			List<HashMap<String, String>> myPage = iCJMMService.myPageJournal(params);

			if(myPage != null) {
				 modelMap.put("msg", "success");
				 modelMap.put("myPage", myPage);
				 modelMap.put("pb", pb);
			} else {
				modelMap.put("msg", "failed");
			}
		} catch (Exception e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		return mapper.writeValueAsString(modelMap);
	}
	
	@RequestMapping(value = "CJMCheckPoints", method = RequestMethod.POST,	produces ="test/json;charset=UTF-8")
	@ResponseBody
	public String CJMCheckPoints(@RequestParam HashMap<String, String> params) throws Throwable {
	
	ObjectMapper mapper = new ObjectMapper();
	Map<String, Object> modelMap = new HashMap<String, Object>();
	
	try {
		HashMap<String, String> data = iCJMMService.getNumber(params);
		
		if(data != null) {
			modelMap.put("msg", "success");
			modelMap.put("data", data);
		} else {
			modelMap.put("msg", "failed");
		}
	} catch (Exception e) {
		System.out.println(e);
	}
		return mapper.writeValueAsString(modelMap);
	}
}