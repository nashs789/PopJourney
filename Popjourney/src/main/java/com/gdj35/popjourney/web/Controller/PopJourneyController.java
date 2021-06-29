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
		
		@RequestMapping(value="join")
		public ModelAndView join(ModelAndView mav)
		{
			mav.setViewName("join");
			
			return mav;
		}
}
