package com.gdj35.popjourney.web.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PopJourneyController {
		
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
}
