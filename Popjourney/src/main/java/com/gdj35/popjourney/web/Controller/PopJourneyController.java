package com.gdj35.popjourney.web.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
		
		//프로필 작성- 이인복
		@RequestMapping(value="/writeProfile")
		public ModelAndView writeProfile(ModelAndView mav)
		{
			mav.setViewName("writeProfile");
			
			return mav;
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
		@RequestMapping(value="/logins",
						method=RequestMethod.POST,
						produces="text/json;charset=UTF-8")
		public String logins(HttpSession session,
							 @RequestParam HashMap<String, String>params) throws Throwable
		{
			ObjectMapper mapper = new ObjectMapper();
			Map<String, String> modelMap = new HashMap<String, String>();
			
			HashMap<String, String>loginInfo = ipjs.login(params);
			
			if(loginInfo != null)
			{
				System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!");
			}
			else
			{
				System.out.println("????????????????????????????");
			}
			
			return mapper.writeValueAsString(modelMap);
		}

}
