package com.gdj35.popjourney.web.Controller;

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
		@RequestMapping(value="/main")
		public ModelAndView main(ModelAndView mav)
		{
			mav.setViewName("main");
			
			return mav;
		}
		
		//약관 페이지 - 이인복
		@RequestMapping(value="/terms")
		public ModelAndView terms(ModelAndView mav)
		{
			mav.setViewName("terms");
			
			return mav;
		}
		
		//회원가입 페이지 - 이인복
		@RequestMapping(value="/join")
		public ModelAndView join(ModelAndView mav)
		{
			mav.setViewName("join");
			
			return mav;
		}
		
		//아이디 중복확인 - 이인복
		//params에 넘어오는 키: storage(ID)
		@RequestMapping(value="/IDDbCk",
						method=RequestMethod.POST,
						produces="text/json;charset=UTF-8")
		@ResponseBody
		public String IDDbCk(@RequestParam HashMap<String, String>params) throws Throwable
		{
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			//doubleCheck로 넘어오는 키: MEM_NO
			HashMap<String, String>doubleCheck = ipjs.IDDbCk(params);
			
			if(doubleCheck == null)
			{
				modelMap.put("msg", "success");
			}
			else
			{
				modelMap.put("msg", "failed");
			}
			
			return mapper.writeValueAsString(modelMap);
		}
		
		//프로필 작성- 이인복
		@RequestMapping(value="/writeProfile")
		public ModelAndView writeProfile(@RequestParam HashMap<String, String>params,
										 ModelAndView mav)
		{
			String birth = params.get("inputYear")+"-"+params.get("inputMonth")+"-"+params.get("inputDay");
			String phone = "010"+ params.get("inputPhone");
			String email = params.get("inputEmail") +"@" + params.get("inputDomain");
			
			HashMap<String, String>data = params;
			
			data.put("birth", birth);
			data.put("phone", phone);
			data.put("email", email);
			
			mav.addObject("data", data);
			
			mav.setViewName("writeProfile");
			
			return mav;
		}
		
		//닉네임 중복확인 - 이인복
		//params에 넘어오는 키: storage(ID)
		@RequestMapping(value="/nicDbCk",
						method=RequestMethod.POST,
						produces="text/json;charset=UTF-8")
		@ResponseBody
		public String nicDbCk(@RequestParam HashMap<String, String>params) throws Throwable
		{
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			//doubleCheck로 넘어오는 키: MEM_NO
			HashMap<String, String>doubleCheck = ipjs.nicDbCk(params);
			
			if(doubleCheck == null)
			{
				modelMap.put("msg", "success");
			}
			else
			{
				modelMap.put("msg", "failed");
			}
			
			return mapper.writeValueAsString(modelMap);
		}

		//회원등록 - 이인복
		@RequestMapping(value="/joins",
						method=RequestMethod.POST,
						produces="text/json;charset=UTF-8")
		@ResponseBody
		public String joins(@RequestParam HashMap<String, String>params) throws Throwable
		{
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();

			//넘어갈 키 값(사용할것): inputName, birth, phone, email, inputID, inputPW 
			//inputCode, inputKeyword, sex, selectTelcom, selectKeyword, photoPath
			//inputNic, inputIntro, maketing
			//int cnt = ipjs.join(params);
			
			System.out.println(params.get("inputName"));
			System.out.println(params.get("birth"));
			System.out.println(params.get("phone"));
			System.out.println(params.get("email"));
			System.out.println(params.get("inputID"));
			System.out.println(params.get("inputPW"));
			System.out.println(params.get("inputCode"));
			System.out.println(params.get("inputKeyword"));
			System.out.println(params.get("sex"));
			System.out.println(params.get("selectTelcom"));
			System.out.println(params.get("selectKeyword"));
			
			 
			return mapper.writeValueAsString(modelMap);
		}	
				
		//아이디 찾기- 이인복
		@RequestMapping(value="/findID")
		public ModelAndView findID(ModelAndView mav)
		{
			mav.setViewName("findID");
			
			return mav;
		}
		
		//아이디 찾기- 이인복
		@RequestMapping(value="/findPW")
		public ModelAndView findPW(ModelAndView mav)
		{
			mav.setViewName("findPW");
			
			return mav;
		}
		
		//타임라인 - 이인복
		@RequestMapping(value="/timeline")
		public ModelAndView timeline(ModelAndView mav)
		{
			mav.setViewName("timeline");
			
			return mav;
		}
		
		//로그인 - 이인복
		//params로 넘어오는 키: inputID, inputPW
		//작업이 안된것: 사진경로, 암호화
		@RequestMapping(value="/logins",
						method=RequestMethod.POST,
						produces="text/json;charset=UTF-8")
		@ResponseBody
		public String logins(HttpSession session,
							 @RequestParam HashMap<String, String>params) throws Throwable
		{
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			//loginInfo로 넘어오는 키: MEM_NO, GRADE_NO, NIC 
			HashMap<String, String>loginInfo = ipjs.login(params);
			
			if(loginInfo != null)
			{
				session.setAttribute("sMEM_NO", loginInfo.get("MEM_NO"));
				
				modelMap.put("GRADE_NO", loginInfo.get("GRADE_NO"));
				modelMap.put("NIC", loginInfo.get("NIC"));
				modelMap.put("msg", "success");
			}
			else
			{
				modelMap.put("msg", "failed");
			}

			return mapper.writeValueAsString(modelMap);
		}

}
