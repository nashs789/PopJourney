package com.gdj35.popjourney.web.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PopJourneyController {
		
		@RequestMapping(value="/main")
		public ModelAndView main(ModelAndView mav)
		{
			mav.setViewName("/main");
			
			return mav;
		}
}
