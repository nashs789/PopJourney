package com.gdj35.popjourney.web.Controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.gdj35.popjourney.common.bean.PagingBean;
import com.gdj35.popjourney.common.service.IPagingService;
import com.gdj35.popjourney.web.Service.IPopJourneyService;

@Controller
public class PopJourneyController {

	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	public IPopJourneyService ipjs;
	
	@Autowired
	public IPagingService ips;

	// 메인페이지 - 이인복
	@RequestMapping(value = "/main")
	public ModelAndView main(ModelAndView mav) { 
		int page = 1;
		
		mav.addObject("page", page);
		mav.setViewName("LIB/main");

		return mav;
	}
	
	// 지역별 랭킹 - 이인복
	@RequestMapping(value = "/regionBoards", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String regionBoards(@RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
	     
	     try {
	    	 List<HashMap<String, String>> yearData = ipjs.yearRank(params);
			 List<HashMap<String, String>> monthData = ipjs.monthRank(params); 
			 List<HashMap<String, String>> weekData = ipjs.weekRank(params); 
	    	 
	    	 modelMap.put("yearData", yearData);
		     modelMap.put("monthData", monthData);
		     modelMap.put("weekData", weekData);
		} catch (Exception e) {
			e.printStackTrace();
		}
	     
		return mapper.writeValueAsString(modelMap);
	}
	
	// 지역별 랭킹 - 이인복
	@RequestMapping(value = "/journalDetails", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String journalDetails(@RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
			//detail: PHOTO_PATH, CONTENTS, LIKE_CNT
		    HashMap<String, String> detail = ipjs.getDetail(params); 
		    
		    if(detail != null)
		    {
		    	modelMap.put("detail", detail);
			    modelMap.put("msg", "success");
		    }
		} catch (Exception e) {
			e.printStackTrace();
		}
	    
		return mapper.writeValueAsString(modelMap);
	}
	
	// 약관 페이지 - 이인복
	@RequestMapping(value = "/terms")
	public ModelAndView terms(ModelAndView mav) {
		mav.setViewName("LIB/terms");

		return mav;
	}

	// 회원가입 페이지 - 이인복
	@RequestMapping(value = "/join")
	public ModelAndView join(@RequestParam HashMap<String, String> params, ModelAndView mav) {
		HashMap<String, String> data = new HashMap<String, String>();

		data.put("marketing", params.get("marketing"));

		mav.addObject("data", data);
		mav.setViewName("LIB/join");

		return mav;
	}

	// 아이디 중복확인 - 이인복
	// params에 넘어오는 키: storage(ID)
	@RequestMapping(value = "/IDDbCk", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String IDDbCk(@RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();

		if (params.get("MEM_NO") != null) {
			HashMap<String, String> doubleCheck = ipjs.IDDbCk2(params);

			try {
				if (doubleCheck == null) {
					modelMap.put("msg", "success");
				} else {
					modelMap.put("msg", "failed");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			// doubleCheck로 넘어오는 키: MEM_NO
			HashMap<String, String> doubleCheck = ipjs.IDDbCk(params);

			try {
				if (doubleCheck == null) {
					modelMap.put("msg", "success");
				} else {
					modelMap.put("msg", "failed");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return mapper.writeValueAsString(modelMap);
	}

	// 프로필 작성- 이인복
	@RequestMapping(value = "/writeProfile")
	public ModelAndView writeProfile(@RequestParam HashMap<String, String> params, ModelAndView mav) {
		String birth = params.get("inputYear") + "-" + params.get("inputMonth") + "-" + params.get("inputDay");
		String phone = "010" + params.get("inputPhone");
		String email = params.get("inputEmail") + "@" + params.get("inputDomain");

		HashMap<String, String> data = params;

		data.put("birth", birth);
		data.put("phone", phone);
		data.put("email", email);

		mav.addObject("data", data);

		mav.setViewName("LIB/writeProfile");

		return mav;
	}

	// 닉네임 중복확인 - 이인복
	// params에 넘어오는 키: storage(ID)
	@RequestMapping(value = "/nicDbCk", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String nicDbCk(@RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();

		if (params.get("MEM_NO") != null) {
			HashMap<String, String> doubleCheck = ipjs.nicDbCk2(params);

			try {
				if (doubleCheck == null) {
					modelMap.put("msg", "success");
				} else {
					modelMap.put("msg", "failed");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			// doubleCheck로 넘어오는 키: MEM_NO
			HashMap<String, String> doubleCheck = ipjs.nicDbCk(params);

			try {
				if (doubleCheck == null) {
					modelMap.put("msg", "success");
				} else {
					modelMap.put("msg", "failed");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return mapper.writeValueAsString(modelMap);
	}

	// 회원등록 - 이인복
	@RequestMapping(value = "/joins", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String joins(@RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();

		// 넘어갈 키 값(사용할것): inputName, birth, phone, email, inputID, inputPW
		// inputCode, inputKeyword, sex, selectTelcom, selectKeyword, photoPath
		// inputNic, inputIntro, marketing
		

		try {
			int cnt = ipjs.join(params);
			ipjs.setProfile();

			if (cnt != 0) {
				modelMap.put("msg", "success");
			} else {
				modelMap.put("msg", "failed");
			}
		} catch (Exception e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		return mapper.writeValueAsString(modelMap);
	}

	// 아이디 찾기 페이지- 이인복
	@RequestMapping(value = "/findID")
	public ModelAndView findID(ModelAndView mav) {
		mav.setViewName("LIB/findID");

		return mav;
	}

	// 아이디 찾기 - 이인복
	@RequestMapping(value = "findIDs", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String findIDs(@RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();

		String email = params.get("inputEmail") + "@" + params.get("inputDomain");
		params.put("email", email);

		HashMap<String, String> data = ipjs.findID(params);

		if (data != null) {
			String star = "";

			for (int i = 0; i < data.get("ID").length() - 4; i++) {
				star += "*";
			}

			String ID = data.get("FIRST") + star + data.get("LAST");
			modelMap.put("ID", ID);
			modelMap.put("NAME", data.get("NAME"));
			modelMap.put("msg", "success");
		} else {
			modelMap.put("msg", "failed");
		}

		return mapper.writeValueAsString(modelMap);
	}

	// 비밀번호 찾기 페이지- 이인복
	@RequestMapping(value = "/findPW")
	public ModelAndView findPW(ModelAndView mav) {
		mav.setViewName("LIB/findPW");

		return mav;
	}

	// 비밀번호 찾기 - 이인복
	@RequestMapping(value = "findPWs", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String findPWs(@RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();

		String email = params.get("inputEmail") + "@" + params.get("inputDomain");
		params.put("email", email);

		HashMap<String, String> data = ipjs.findPW(params);

		if (data != null) {
			modelMap.put("MEM_NO", data.get("MEM_NO"));
			modelMap.put("msg", "success");
		} else {
			modelMap.put("msg", "failed");
		}

		return mapper.writeValueAsString(modelMap);
	}

	// 비밀번호 재설정 - 이인복
	@RequestMapping(value = "updateInputPWs", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String updateInputPWs(@RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();

		int cnt = ipjs.updatePW(params);

		try {
			if (cnt != 0) {
				modelMap.put("msg", "success");
			} else {
				modelMap.put("msg", "failed");
			}
		} catch (Exception e) {
			e.printStackTrace();

			modelMap.put("msg", "error");
		}

		return mapper.writeValueAsString(modelMap);
	}

	// 타임라인 - 이인복
	@RequestMapping(value = "/editInfo")
	public ModelAndView editInfo(ModelAndView mav) {
		int page = 1;
		
		mav.addObject("page", page);
		mav.setViewName("LIB/editInfo");

		return mav;
	}

	// 회원정보 가져오기 - 이인복
	@RequestMapping(value = "/getInfo", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String getInfo(@RequestParam HashMap<String, String> params) throws Throwable {

		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, String> modelMap = new HashMap<String, String>();

		// NAME, ID, PW, PHONE, EMAIL, DOMAIN, YEAR, MONTH, DAY, SEX, KEYWORD_NO,
		// KEYWORD, TELCOM
		HashMap<String, String> myInfo = ipjs.getInfo(params);
		modelMap = myInfo;

		if (myInfo != null) {
			modelMap.put("msg", "success");
		} else {
			modelMap.put("msg", "failed");
		}

		return mapper.writeValueAsString(modelMap);
	}

	// 회원정보 수정 - 이 인복
	@RequestMapping(value = "/editInfos", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String editInfos(@RequestParam HashMap<String, String> params) throws Throwable {

		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, String> modelMap = new HashMap<String, String>();

		String birth = params.get("inputYear") + "-" + params.get("inputMonth") + "-" + params.get("inputDay");
		String phone = "010" + params.get("inputPhone");
		String email = params.get("inputEmail") + "@" + params.get("inputDomain");

		params.put("birth", birth);
		params.put("phone", phone);
		params.put("email", email);

		try {
			int cnt = ipjs.updateInfo(params);

			if (cnt != 0) {
				modelMap.put("msg", "success");
			} else {
				modelMap.put("msg", "failed");
			}

		} catch (Exception e) {
			modelMap.put("msg", "error");
		}

		return mapper.writeValueAsString(modelMap);
	}

	// 프로필 수정 페이지 - 이인복
	@RequestMapping(value = "/editProfile")
	public ModelAndView editProfile(ModelAndView mav) {
		int page = 1;
		
		mav.addObject("page", page);
		mav.setViewName("LIB/editProfile");

		return mav;
	}

	// 회원정보 가져오기 - 이인복
	@RequestMapping(value = "/getInfo2", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String getInfo2(@RequestParam HashMap<String, String> params) throws Throwable {

		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, String> modelMap = new HashMap<String, String>();

		// PHOTO_PATH, NIC, INTRO
		HashMap<String, String> myInfo = ipjs.getInfo2(params);
		modelMap = myInfo;

		if (myInfo != null) {
			modelMap.put("msg", "success");
		} else {
			modelMap.put("msg", "failed");
		}

		return mapper.writeValueAsString(modelMap);
	}

	
	  //프로필 수정 - 이 인복 
	  @RequestMapping(value = "/editProfiles", 
			  		method = RequestMethod.POST,
			  		produces = "text/json;charset=UTF-8")
	  @ResponseBody public String editProfiles(@RequestParam HashMap<String, String> params) throws Throwable 
	  {
	  	  ObjectMapper mapper = new ObjectMapper(); 
	  	  HashMap<String, String> modelMap = new HashMap<String, String>();
	  	  

		  
		  try { 
			  int cnt = ipjs.updateProfile(params);
			  
			  if(cnt != 0) 
			  { 
				  modelMap.put("msg", "success"); 
			  } 
			  else 
			  { 
				  modelMap.put("msg", "failed"); 
			  }
		  
		  } 
		  catch (Exception e){ 
			  modelMap.put("msg", "error"); 
		  }
		  
		  return mapper.writeValueAsString(modelMap); 
	  }
	 

	// 알람 모아보기 - 이인복
	@RequestMapping(value = "/notification")
	public ModelAndView notification(ModelAndView mav) {
		
		int page = 0;
		int firstPage = 1;
	
		mav.addObject("firstPage", firstPage);
		mav.addObject("page", page);
		mav.setViewName("LIB/notification");

		return mav;
	}

	// 로그인 - 이인복
	// params로 넘어오는 키: inputID, inputPW
	// 작업이 안된것: 사진경로, 암호화
	@RequestMapping(value = "/logins", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String logins(HttpSession session, @RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		// loginInfo로 넘어오는 키: MEM_NO, GRADE_NO, NIC, LAST_DATE, TODAY
		HashMap<String, String> loginInfo = ipjs.login(params);
		SimpleDateFormat simpleD = new SimpleDateFormat("yyyy-MM-dd");

		try {
			if (loginInfo != null) {
				Date lastDate = simpleD.parse(loginInfo.get("LAST_DATE"));
				Date today = simpleD.parse(loginInfo.get("TODAY"));

				params.put("MEM_NO", String.valueOf(loginInfo.get("MEM_NO")));
				
				if (lastDate.compareTo(today) < 0) {
					ipjs.accCnt(params);
				}
				
				session.setAttribute("sMEM_NO", loginInfo.get("MEM_NO"));
				session.setAttribute("sGRADE_NO", loginInfo.get("GRADE_NO"));
				session.setAttribute("sNIC", loginInfo.get("NIC"));
				session.setAttribute("sPHOTO_PATH", loginInfo.get("PHOTO_PATH"));
				session.setAttribute("sINTRO", loginInfo.get("INTRO"));
				
				HashMap<String, String> data = ipjs.getNumber(params);

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
	
	//로그인 안했을 경우 - 이인복
	@RequestMapping(value = "/loginPlz")
	public ModelAndView loginPlz(ModelAndView mav) { 
		mav.setViewName("LIB/loginPlz");

		return mav;
	}
	
	// 알람 팝업 - 이인복
	@RequestMapping(value = "/notifications", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String notifications(@RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();

		if(params.get("GBN").equals("1"))
		{
			params.put("page", Integer.toString(Integer.parseInt(params.get("page")) * 10));
		}
		else
		{
			if(Integer.parseInt(params.get("pageCnt")) < Integer.parseInt(params.get("page"))*10)
			{
				modelMap.put("msg", "full");
				return mapper.writeValueAsString(modelMap);
			}		
			params.put("page", Integer.toString((Integer.parseInt(params.get("page"))+1) * 10));
		}
		try {

			List<HashMap<String, String>> notification  = ipjs.notification(params);
			
			if(notification != null)
			{
				SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd");
				Date day1 = new Date();
				Date day2;
				
				for(int i = 0; i < notification.size(); i++)
				{
			    	String msg ="";
					
					day2 = simple.parse(String.valueOf(notification.get(i).get("NOTF_DATE2")));
					 
				 	if(day1.getYear() != day2.getYear())
					{
						msg = day1.getYear() - day2.getYear()+"년 전";
					}
					else if(day1.getMonth() != day2.getMonth())
					{
						msg = day1.getMonth() - day2.getMonth()+"달 전";
					}
					else if(day1.getDate() != day2.getDate())
					{
						msg = day1.getDate() - day2.getDate()+"일 전";
					}
					else if(day1.getDate() == day2.getDate())
					{
						msg = "오늘";
				    }
				   notification.get(i).put("msg", msg);
				}
				modelMap.put("msg", "success");
				modelMap.put("notification", notification);
				modelMap.put("page", Integer.toString(Integer.parseInt(params.get("page")) / 10));
				modelMap.put("firstPage", Integer.toString(Integer.parseInt(params.get("page"))));
			}
			else if(notification == null)
			{
				modelMap.put("msg", "failed");
			}
		} catch (Exception e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}

		return mapper.writeValueAsString(modelMap);
	}
	
	// 알림페이지 게시글 카운트 - 이인복
	@RequestMapping(value = "/pageCnts", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String pageCnts(@RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		 try {
			 
			 HashMap<String, String> pageCnt = ipjs.pageCnt(params);
			 
			 if(pageCnt != null)
			 {
				 modelMap.put("msg", "success");
				 modelMap.put("pageCnt", String.valueOf(pageCnt.get("CNT")));
			 }
			 else
			 {
				 modelMap.put("msg", "failed");
			 }
			
		} catch (Exception e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		return mapper.writeValueAsString(modelMap);
	}
	
	// 알람 팝업창에 읽음표시 - 이인복
	@RequestMapping(value = "/reads", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String reads(@RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		 
		 try {
			 
			 int cnt = ipjs.read(params);
			 
			 if(cnt != 0)
			 {
				 modelMap.put("msg", "success");
			 }
			 else
			 {
				 modelMap.put("msg", "failed");
			 }
			
		} catch (Exception e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		return mapper.writeValueAsString(modelMap);
	}
	
	// 타임라인 페이지 - 이인복
	@RequestMapping(value = "/timeline")
	public ModelAndView timeline(ModelAndView mav) {
		int page = 1;
		
		mav.addObject("page", page);
		mav.setViewName("LIB/timeline");

		return mav;
	}
	
	// 타임라인 가져오기 - 이인복
	@RequestMapping(value = "/timelines", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String timelines(@RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();

	    List<HashMap<String, String>> timeline = ipjs.timeline(params);
		
		try {
			if(timeline != null)
			{
				int firstPage = Integer.parseInt(params.get("firstPage"))+10;
				int lastPage = Integer.parseInt(params.get("lastPage"))+10;
				
				if(Integer.parseInt(params.get("pageCnt")) <= lastPage)
				{
					modelMap.put("msg", "full");
					return mapper.writeValueAsString(modelMap);
				}
				
				modelMap.put("timeline", timeline);
				modelMap.put("msg", "success");
				modelMap.put("firstPage", firstPage);
				modelMap.put("lastPage", lastPage);
			}
			else
			{
				modelMap.put("msg", "failed");
			}
		} catch (Exception e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		
		return mapper.writeValueAsString(modelMap);
	}
	
		// 타임라인 페이지 게시글 카운트 - 이인복
		@RequestMapping(value = "/miniProfiles", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String miniProfiles(@RequestParam HashMap<String, String> params) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			 try {
				 
				 HashMap<String, String> mini = ipjs.miniProfile(params);
	
				 if(mini != null)
				 {
					 modelMap.put("msg", "success");
					 modelMap.put("mini", mini);
				 }
				 else if(mini == null)
				 {
					 modelMap.put("msg", "nothing");
				 }
				
			} catch (Exception e) {
				e.printStackTrace();
				modelMap.put("msg", "error");
			}
			return mapper.writeValueAsString(modelMap);
		}
	
	// 타임라인 페이지 게시글 카운트 - 이인복
	@RequestMapping(value = "/timelinePageCnts", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String timelinePageCnts(@RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		 try {
			 
			 HashMap<String, String> pageCnt = ipjs.timelinePageCnt(params);
			 
			 if(pageCnt != null)
			 {
				 modelMap.put("msg", "success");
				 modelMap.put("pageCnt", String.valueOf(pageCnt.get("CNT")));
			 }
			 else
			 {
				 modelMap.put("msg", "failed");
			 }
			
		} catch (Exception e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		return mapper.writeValueAsString(modelMap);
	}
	
	// 메인화면 공지사항 - 이인복
	@RequestMapping(value = "/notices", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String notices() throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();

		 List<HashMap<String, String>> noticeData = ipjs.notice();
		 
		 try {
			if(noticeData != null)
			{
				modelMap.put("msg", "success");
				modelMap.put("noticeData", noticeData);
			}
			else
			{
				modelMap.put("msg", "failed");
			}
		} catch (Exception e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		return mapper.writeValueAsString(modelMap);
	}

	// 로그아읏 - 이인복
	@RequestMapping(value = "/logouts", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String logouts(HttpSession session) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();

		session.invalidate();

		return mapper.writeValueAsString(modelMap);
	}
	
	// 회원정보 삭제 - 이인복
	@RequestMapping(value = "/deletes", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String deletes(HttpSession session, @RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();

		 try {
			 
			 int cnt = ipjs.delete(params);
			 
			 session.invalidate();
			 
			 if(cnt != 0)
			 {
				 modelMap.put("msg", "success");
			 }
			 else
			 {
				 modelMap.put("msg", "failed");
			 }
			
		} catch (Exception e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		
		return mapper.writeValueAsString(modelMap);
	}
	
		//프로필 가져오기
		@RequestMapping(value = "/myPageProfiles", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String myPageProfiles(@RequestParam HashMap<String, String> params) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			 try {
				 
				HashMap<String, String> myProfile = ipjs.myPageProfile(params);
				
				 if(myProfile != null)
				 {
					 modelMap.put("msg", "success");
					 modelMap.put("myProfile", myProfile);
				 }
				 else
				 {
					 modelMap.put("msg", "failed");
				 }
				
			} catch (Exception e) {
				e.printStackTrace();
				modelMap.put("msg", "error");
			}
			
			return mapper.writeValueAsString(modelMap);
		}
	
	//마이 페이지 일지 가져오기
	@RequestMapping(value = "/myPageJournals", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String myPageJournals(@RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();

		int page = Integer.parseInt(params.get("page"));
		int cnt = ipjs.journalCnt(params);
		
		PagingBean pb = ips.getPagingBean(page, cnt, 15, 5);

		params.put("startCnt", Integer.toString(pb.getStartCount()));
		params.put("endCnt", Integer.toString(pb.getEndCount()));

		 try {
			 List<HashMap<String, String>> myPage = ipjs.myPageJournal(params);

			 if(myPage != null)
			 {
				 modelMap.put("msg", "success");
				 modelMap.put("myPage", myPage);
				 modelMap.put("pb", pb);
			 }
			 else
			 {
				 modelMap.put("msg", "failed");
			 }
		} catch (Exception e) {
			e.printStackTrace();
			modelMap.put("msg", "error");
		}
		return mapper.writeValueAsString(modelMap);
	}
	
		//마이 페이지 일지 가져오기
		@RequestMapping(value = "/myFollowers", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String myFollowers(@RequestParam HashMap<String, String> params) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			int cnt = ipjs.followerCnt(params);
			
			if(Integer.parseInt(params.get("firstPage")) > cnt)
			{
				modelMap.put("msg", "full");
				return mapper.writeValueAsString(modelMap);
			}
			
			 try {
				 
				 List<HashMap<String, String>> myFollower = ipjs.myPageFollower(params);

				 if(myFollower != null)
				 {
					 modelMap.put("firstPage", Integer.toString(Integer.parseInt(params.get("firstPage")) + 15));
					 modelMap.put("lastPage", Integer.toString(Integer.parseInt(params.get("lastPage")) + 15));
					
					 modelMap.put("msg", "success");
					 modelMap.put("myFollower", myFollower);
					 modelMap.put("cnt", cnt);
				 }
				 else
				 {
					 modelMap.put("msg", "failed");
				 }
				
			} catch (Exception e) {
				e.printStackTrace();
				modelMap.put("msg", "error");
			}
			
			return mapper.writeValueAsString(modelMap);
		}
		
		//마이 페이지 팔로잉 한 사람 가져오기
		@RequestMapping(value = "/myFollowings", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String myFollowings(@RequestParam HashMap<String, String> params) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();

			int cnt = ipjs.followingCnt(params);
			
			if(Integer.parseInt(params.get("firstPage")) > cnt)
			{
				modelMap.put("msg", "full");
				return mapper.writeValueAsString(modelMap);
			}
			 try {
				 
				 List<HashMap<String, String>> myFollowing = ipjs.myPageFollowing(params);

				 if(myFollowing != null)
				 {
					 modelMap.put("firstPage", Integer.toString(Integer.parseInt(params.get("firstPage")) + 15));
					 modelMap.put("lastPage", Integer.toString(Integer.parseInt(params.get("lastPage")) + 15));

					 modelMap.put("msg", "success");
					 modelMap.put("myFollowing", myFollowing);
					 modelMap.put("cnt", cnt);
				 }
				 else
				 {
					 modelMap.put("msg", "failed");
				 }
				
			} catch (Exception e) {
				e.printStackTrace();
				modelMap.put("msg", "error");
			}
			
			return mapper.writeValueAsString(modelMap);
		}
		
		//마이 페이지 팔로잉 한 사람 메모 가져오기
		@RequestMapping(value = "/followingMemos", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String followingMemos(@RequestParam HashMap<String, String> params) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();

			 try {
				 
				 HashMap<String, String> followingMemo = ipjs.followingMemo(params);

				 modelMap.put("msg", "success");
				 modelMap.put("followingMemo", followingMemo);

			} catch (Exception e) {
				e.printStackTrace();
				modelMap.put("msg", "error");
			}
			
			return mapper.writeValueAsString(modelMap);
		}
		
		//팔로우 메모 업데이트
		@RequestMapping(value = "/updateMemos", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String updateMemos(@RequestParam HashMap<String, String> params) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();

			 try {
				 
				 int cnt = ipjs.updateMemo(params);

				 if(cnt > 0)
				 {
					 modelMap.put("msg", "success");
				 }
				 else
				 {
					 modelMap.put("msg", "failed");
				 }
				
			} catch (Exception e) {
				e.printStackTrace();
				modelMap.put("msg", "error");
			}
			
			return mapper.writeValueAsString(modelMap);
		}
		
		//팔로우 했는지 안했는지 체크
		@RequestMapping(value = "/followStatus", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String followStatus(@RequestParam HashMap<String, String> params) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();

			 try {
				 
				 int cnt = ipjs.followStatus(params);

				 if(cnt > 0)
				 {
					 modelMap.put("msg", "success");
				 }
				 else
				 {
					 modelMap.put("msg", "failed");
				 }
				
			} catch (Exception e) {
				e.printStackTrace();
				modelMap.put("msg", "error");
			}
			
			return mapper.writeValueAsString(modelMap);
		}
		
		//언팔로우
		@RequestMapping(value = "/unfollows", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String unfollows(@RequestParam HashMap<String, String> params) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();

			 try {
				 
				 int cnt = ipjs.unfollow(params);

				 if(cnt > 0)
				 {
					 modelMap.put("msg", "success");
				 }
				 else
				 {
					 modelMap.put("msg", "failed");
				 }
				
			} catch (Exception e) {
				e.printStackTrace();
				modelMap.put("msg", "error");
				}
				
			return mapper.writeValueAsString(modelMap);
		}
		
		//팔로우
		@RequestMapping(value = "/follows", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String follows(@RequestParam HashMap<String, String> params) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();

			 try {
				 
				 int cnt = ipjs.follow(params);
				 int cnt2 = ipjs.followNotf(params);

				 if(cnt > 0 && cnt2 > 0)
				 {
					 modelMap.put("msg", "success");
				 }
				 else
				 {
					 modelMap.put("msg", "failed");
				 }
				
			} catch (Exception e) {
				e.printStackTrace();
				modelMap.put("msg", "error");
				}
				
			return mapper.writeValueAsString(modelMap);
		}
		
		//내 북마크 가져오기
		@RequestMapping(value = "/myBMKs", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String myBMKs(@RequestParam HashMap<String, String> params) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();

			 try {
				 
				 List<HashMap<String, String>>BMK = ipjs.myBMK(params);

				 if(BMK != null)
				 {
					 modelMap.put("msg", "success");
					 modelMap.put("BMK", BMK);

				 }
				 else
				 {
					 modelMap.put("msg", "failed");
				 }
				
			} catch (Exception e) {
				e.printStackTrace();
				modelMap.put("msg", "error");
					}
					
				return mapper.writeValueAsString(modelMap);
		}
		
		//내 북마크 수정하기
		@RequestMapping(value = "/editBMKs", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String editBMKs(@RequestParam HashMap<String, String> params) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();

			 try {
				 
				 HashMap<String, String>BMK = ipjs.BMKDetail(params);

				 if(BMK != null)
				 {
					 modelMap.put("msg", "success");
					 modelMap.put("BMK", BMK);

				 }
				 else
				 {
					 modelMap.put("msg", "failed");
				 }
				
			} catch (Exception e) {
				e.printStackTrace();
				modelMap.put("msg", "error");
					}
					
				return mapper.writeValueAsString(modelMap);
		}
		
		//내 북마크 갯수 카운트
		@RequestMapping(value = "/myBMKCnts", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String myBMKCnts(@RequestParam HashMap<String, String> params) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();

			 try {
				 
				 int cnt = ipjs.myBMKCnt(params);

				 if(cnt > 0)
				 {
					 modelMap.put("msg", "success");
					 modelMap.put("cnt", cnt);

				 }
				 else
				 {
					 modelMap.put("msg", "failed");
				 }
				
			} catch (Exception e) {
				e.printStackTrace();
				modelMap.put("msg", "error");
					}
					
				return mapper.writeValueAsString(modelMap);
		}
		
		//북마크 추가
		@RequestMapping(value = "/addBMKs", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String addBMKs(@RequestParam HashMap<String, String> params) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();

			 try {
				 
				 int cnt = ipjs.addBMK(params);

				 if(cnt > 0)
				 {
					 modelMap.put("msg", "success");
					 modelMap.put("cnt", cnt);
				 }
				 else
				 {
					 modelMap.put("msg", "failed");
				 }
				
			} catch (Exception e) {
				e.printStackTrace();
				modelMap.put("msg", "error");
					}
					
				return mapper.writeValueAsString(modelMap);
		}
		
		//북마크 상세보기
		@RequestMapping(value = "/myPageBMKDetail")
		public ModelAndView myPageBMKDetail(@RequestParam HashMap<String, String> params, ModelAndView mav)throws Throwable
		{
			int cnt = ipjs.BMKDetailCnt(params);
			
			mav.addObject("cnt", cnt);
			mav.addObject("BMKNo", params.get("BMKNo"));
			mav.setViewName("LIB/myPageBMKDetail");

			return mav;
		}
		
		//북마크 삭제하기
		@RequestMapping(value = "/delBMKs", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String delBMKs(@RequestParam HashMap<String, String> params) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();

			 try {
				 
				 int cnt = ipjs.delBMK(params);
				 int cnt2 = ipjs.delBMK2(params);

			} catch (Exception e) {
				e.printStackTrace();
				modelMap.put("msg", "error");
					}
					
				return mapper.writeValueAsString(modelMap);
		}

		//북마크 수정하기
		@RequestMapping(value = "/updateBMKs", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String updateBMKs(@RequestParam HashMap<String, String> params) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();

			 try {
				 
				 int cnt = ipjs.updateBMK(params);

			} catch (Exception e) {
				e.printStackTrace();
				modelMap.put("msg", "error");
					}
					
				return mapper.writeValueAsString(modelMap);
		}
		
		//북마크 안에 일지 리스트
		@RequestMapping(value = "/detailLists", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String detailLists(@RequestParam HashMap<String, String> params) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();

			int page = Integer.parseInt(params.get("page"));
			int cnt = Integer.parseInt(params.get("cnt"));

			PagingBean pb = ips.getPagingBean(page, cnt, 15, 5);

			params.put("startCnt", Integer.toString(pb.getStartCount()));
			params.put("endCnt", Integer.toString(pb.getEndCount()));

			 try {
				 
				 List<HashMap<String, String>> detail = ipjs.detailList(params);

				 if(detail != null)
				 {
					 modelMap.put("msg", "success");
					 modelMap.put("pb", pb);
					 modelMap.put("detail", detail);
				 }
				 else
				 {
					 modelMap.put("msg", "failed");
				 }
			} catch (Exception e) {
				e.printStackTrace();
				modelMap.put("msg", "error");
					}
					
				return mapper.writeValueAsString(modelMap);
		}
		
		//북마크 안에 일지 리스트
		@RequestMapping(value = "/deleteBMKJournals", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String deleteBMKJournals(@RequestParam HashMap<String, String> params) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();

			 try {
				 
				 int cnt = ipjs.deleteBMKJournal(params);

				 if(cnt > 0)
				 {
					 modelMap.put("msg", "success");
				 }
				 else
				 {
					 modelMap.put("msg", "failed");
				 }
			} catch (Exception e) {
				e.printStackTrace();
				modelMap.put("msg", "error");
					}
					
				return mapper.writeValueAsString(modelMap);
		}
		
		//일지 리스트 그리기
		@RequestMapping(value = "/journalLists", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String journalLists(@RequestParam HashMap<String, String> params) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();

			 try {
				 
				 List<HashMap<String, String>> journalList = ipjs.journalList(params);

				 if(journalList != null)
				 {
					 modelMap.put("msg", "success");
					 modelMap.put("list", journalList);
				 }
				 else
				 {
					 modelMap.put("msg", "failed");
				 }
			} catch (Exception e) {
				e.printStackTrace();
				modelMap.put("msg", "error");
					}
					
				return mapper.writeValueAsString(modelMap);
		}
		
		//일지 리스트 그리기
		@RequestMapping(value = "/journalListCnts", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String journalListCnts(@RequestParam HashMap<String, String> params) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			 try {
				 int cntList = ipjs.journalListCnt(params);
				 int page = Integer.parseInt(params.get("page"));
				 PagingBean pb = ips.getPagingBean(page, cntList, 15, 5);
				 

				 params.put("startCnt", Integer.toString(pb.getStartCount()));
				 params.put("endCnt", Integer.toString(pb.getEndCount()));
				 params.put("maxCnt", Integer.toString(pb.getMaxPcount()));

				 if(cntList > 0)
				 {
					 modelMap.put("msg", "success");
					 modelMap.put("pb", pb);
					 modelMap.put("cnt", cntList);
				 }
				 else if(cntList == 0)
				 {
					 modelMap.put("msg", "failed");
				 }
			} catch (Exception e) {
				e.printStackTrace();
				modelMap.put("msg", "error");
					}
					
				return mapper.writeValueAsString(modelMap);
		}
		
		//게시글 목록
		@RequestMapping(value = "/journalBoard")
		public ModelAndView journalBoard(ModelAndView mav) {
			
			mav.setViewName("LES/journalBoard");

			return mav;
		}
		
		//지역별 사진
		@RequestMapping(value = "/myPageMap")
		public ModelAndView myPageMap(ModelAndView mav) {
			
			mav.setViewName("LES/myPageMap");

			return mav;
		}
		
		//지역별 사진 모아보기
		@RequestMapping(value = "/myPageMapDetail")
		public ModelAndView myPageMapDetail(ModelAndView mav, @RequestParam HashMap<String, String> params)throws Throwable {
			
			int cnt = ipjs.regionListCnt(params);
			
			mav.addObject("regionNo", params.get("regionNo"));
			mav.addObject("cnt", cnt);
			mav.setViewName("LIB/myPageMapDetail");

			return mav;
		}
		
		//일지 리스트 그리기
		@RequestMapping(value = "/regionDetails", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String regionDetails(@RequestParam HashMap<String, String> params) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			 try {
				 int cnt = Integer.parseInt(params.get("cnt"));
				 int page = Integer.parseInt(params.get("page"));
				 PagingBean pb = ips.getPagingBean(page, cnt, 15, 5);
				
				 params.put("startCnt", Integer.toString(pb.getStartCount()));
				 params.put("endCnt", Integer.toString(pb.getEndCount()));

				 List<HashMap<String, String>> regionList = ipjs.regionList(params);
				 if(cnt > 0)
				 {
					 modelMap.put("msg", "success");
					 modelMap.put("pb", pb);
					 modelMap.put("regionList", regionList);
				 }
				 else if(cnt== 0)
				 {
					 modelMap.put("msg", "failed");
				 }
			} catch (Exception e) {
				e.printStackTrace();
				modelMap.put("msg", "error");
					}
					
				return mapper.writeValueAsString(modelMap);
		}
		
		//인증 코드 메일 보내기
		@RequestMapping(value = "sendCodes",
						method = RequestMethod.POST,
						produces ="test/json;charset=UTF-8")
		@ResponseBody
		public String sendCodes(@RequestParam HashMap<String, String> params) throws Throwable {
			
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			int random;
			String code = "";
			
			for(int i = 0; i < 10; i++)
			{
				random = (int)Math.floor(Math.random()*3)+0;
				if(random == 0)
				{	
					code += (int)(Math.floor(Math.random()*10)+0);
				}
				else if(random == 1)
				{
					code += (char)((int)Math.floor((Math.random() * 26 )+65));
				}
				else
				{
					code += (char)((int)Math.floor((Math.random() * 26 )+97));
				}
			}	

			String setfrom = "PopJourney";
			String tomail = params.get("inputEmail") + "@" + params.get("inputDomain"); // 받는 사람 이메일
			String title = "PopJourney 회원가입 메일 인증입니다."; // 제목
			String content = "<div>PopJourney 가입 메일입니다. </div>" + code; // 내용

			try {
				MimeMessage message = mailSender.createMimeMessage();
				MimeMessageHelper messageHelper = new MimeMessageHelper(message,true, "UTF-8");

				messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
				messageHelper.setTo(tomail); // 받는사람 이메일
				messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
				messageHelper.setText(content, true); // 메일 내용

				mailSender.send(message);
				
				params.put("mail", tomail);
				params.put("title", title);
				params.put("content", content);
				params.put("code", code);
				
				int cnt = ipjs.mail(params);
				
				if(cnt > 0)
				{
					modelMap.put("msg", "success");
				}
				else 
				{
					modelMap.put("msg", "failed");
				}
			} catch (Exception e) {
				System.out.println(e);
			}

			return mapper.writeValueAsString(modelMap);
		}
		
		//이메일 인증코드확인
		@RequestMapping(value = "/checkCodes", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String checkCodes(@RequestParam HashMap<String, String> params) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			String mail = params.get("inputEmail") + "@" + params.get("inputDomain"); // 받는 사람 이메일
			params.put("mail", mail);
			
			 try {
				 int cnt = ipjs.checkCode(params);
				 
				 if(cnt > 0)
				 {
					 modelMap.put("msg", "success");
				 }
				 else if(cnt == 0)
				 {
					 modelMap.put("msg", "failed");
				 }
			} catch (Exception e) {
				e.printStackTrace();
				modelMap.put("msg", "error");
					}
					
				return mapper.writeValueAsString(modelMap);
		}
		
		//인증 코드 메일 보내기
		@RequestMapping(value = "sendIDs",
						method = RequestMethod.POST,
						produces ="test/json;charset=UTF-8")
		@ResponseBody
		public String sendIDs(@RequestParam HashMap<String, String> params) throws Throwable {
			
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			String email = params.get("inputEmail") + "@" + params.get("inputDomain");
			params.put("email", email);

			HashMap<String, String> data = ipjs.findID(params);

			String setfrom = "PopJourney";
			String tomail = params.get("inputEmail") + "@" + params.get("inputDomain"); // 받는 사람 이메일
			String title = "PopJourney 아이디 찾기"; // 제목
			String content = "<div>회원님의 아이디는" + data.get("ID")+ " 입니다. </div>"; // 내용
			
			
			try {
				MimeMessage message = mailSender.createMimeMessage();
				MimeMessageHelper messageHelper = new MimeMessageHelper(message,true, "UTF-8");

				messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
				messageHelper.setTo(tomail); // 받는사람 이메일
				messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
				messageHelper.setText(content, true); // 메일 내용

				mailSender.send(message);
			} catch (Exception e) {
				System.out.println(e);
			}

			return mapper.writeValueAsString(modelMap);
		}
		
		//등급 신청
		@RequestMapping(value = "/upgrades", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String upgrades(@RequestParam HashMap<String, String> params) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();

			if(Integer.parseInt(params.get("point")) < 100)
			{
				modelMap.put("msg", "notEnough");
				return mapper.writeValueAsString(modelMap);
			}

			 try {
				 int cnt = ipjs.upgrade(params);
				 
				 if(cnt > 0)
				 {
					 modelMap.put("msg", "success");
				 }
				 else if(cnt == 0)
				 {
					 modelMap.put("msg", "failed");
				 }
			} catch (Exception e) {
				e.printStackTrace();
				modelMap.put("msg", "error");
					}
					
				return mapper.writeValueAsString(modelMap);
		}
		
		// 여행일지 작성페이지
		@RequestMapping(value = "/journalWrite")
		public ModelAndView journalWrite(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {
			
			mav.addObject("startDate", params.get("startDate"));
			mav.addObject("endDate", params.get("endDate"));
			mav.addObject("regionNo", params.get("regionNo"));
			mav.setViewName("LES/journalWrite");
			
			return mav;
		}
		
		//여행일지 작성
		@RequestMapping(value = "/addJournals", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String addJournals(@RequestParam HashMap<String, String> params,
								  @RequestParam List<String> contents,
								  @RequestParam List<String> memo,
								  @RequestParam List<String> photo) throws Throwable {
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();

			String arr[] = params.get("inputHashtag").split("#");
			
			 try {
				 ipjs.addJournal(params);
				 
				 for(int i = 0; i < contents.size(); i++)
				 {
					 if(contents.get(i) == "" || memo.get(i) == "" || photo.get(i) == "")
					 {
						 break;
					 }
					 params.put("journalSequence", Integer.toString(i));
					 params.put("inputContents", contents.get(i));
					 params.put("inputMemo", memo.get(i));
					 params.put("inputPhoto", photo.get(i));
					 
					 ipjs.addJournalDetail(params);
				 }
				 
				for(int i = 1; i < arr.length; i++)
				{
					params.put("inputHashtag", arr[i]);
					
					ipjs.addHash(params);
					ipjs.addJournalHash(params);
				}
					

			} catch (Exception e) {
				e.printStackTrace();
				modelMap.put("msg", "error");
					}
					
				return mapper.writeValueAsString(modelMap);
		}	
		
		// 마이페이지 썸네일
		@RequestMapping(value = "/myPage")
		public ModelAndView myPage(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {		
			
			 mav.setViewName("LES/myPage");

			return mav;
		}
		
		//인증 코드 메일 보내기
		@RequestMapping(value = "checkPoints",
						method = RequestMethod.POST,
						produces ="test/json;charset=UTF-8")
		@ResponseBody
		public String checkPoints(@RequestParam HashMap<String, String> params) throws Throwable {
			
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			try {
				HashMap<String, String> data = ipjs.getNumber(params);
				
				if(data != null)
				 {
					 modelMap.put("msg", "success");
					 modelMap.put("data", data);
				 }
				 else
				 {
					 modelMap.put("msg", "failed");
				 }
			} catch (Exception e) {
				System.out.println(e);
			}

			return mapper.writeValueAsString(modelMap);
		}
}