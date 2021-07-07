package com.gdj35.popjourney.web.Controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
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
import com.gdj35.popjourney.web.Service.IPopJourneyService;

@Controller
public class PopJourneyController {

	@Autowired
	public IPopJourneyService ipjs;

	// 메인페이지 - 이인복
	@RequestMapping(value = "/main")
	public ModelAndView main(ModelAndView mav) {
		mav.setViewName("LIB/main");

		return mav;
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
	  	  
	  	  System.out.println(params);
		  
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
	 

	// 타임라인 - 이인복
	@RequestMapping(value = "/timeline")
	public ModelAndView timeline(ModelAndView mav) {
		mav.setViewName("LIB/timeline");

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

				if (lastDate.compareTo(today) < 0) {
					params.put("MEM_NO", String.valueOf(loginInfo.get("MEM_NO")));

					ipjs.accCnt(params);
				}
				session.setAttribute("sMEM_NO", loginInfo.get("MEM_NO"));
				session.setAttribute("sGRADE_NO", loginInfo.get("GRADE_NO"));

				modelMap.put("GRADE_NO", loginInfo.get("GRADE_NO"));
				modelMap.put("NIC", loginInfo.get("NIC"));
				modelMap.put("msg", "success");
			} else {
				modelMap.put("msg", "failed");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return mapper.writeValueAsString(modelMap);
	}

	@RequestMapping(value = "/logouts", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String logouts(HttpSession session) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();

		session.invalidate();

		return mapper.writeValueAsString(modelMap);
	}
	
	@RequestMapping(value = "/deletes", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String deletes(HttpSession session, @RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();

		session.invalidate();

		int cnt = ipjs.delete(params);
		
		return mapper.writeValueAsString(modelMap);
	}
}
