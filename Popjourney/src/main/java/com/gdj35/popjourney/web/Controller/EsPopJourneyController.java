package com.gdj35.popjourney.web.Controller;

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
import com.gdj35.popjourney.web.Service.IEsPopjourneyService;
import com.gdj35.popjourney.web.Service.IPopJourneyService;

@Controller
public class EsPopJourneyController {
	@Autowired
	public IEsPopjourneyService iEsPopjourneyService;

	@Autowired
	public IPagingService iPagingService;
	
	@Autowired //인복
	public IPopJourneyService ipjs;

	// 마이페이지 썸네일
	@RequestMapping(value = "/myPage")
	public ModelAndView myPage(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {
		int page = 1;
		if (params.get("page") != null) {
			page = Integer.parseInt(params.get("page"));
		}
		mav.addObject("page", page);
		mav.setViewName("LES/myPage");

		return mav;
	}

	// 마이페이지 북마크
	@RequestMapping(value = "/myPageBMK")
	public ModelAndView myPageBMK(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {

		mav.setViewName("LES/myPageBMK");

		return mav;

	}

	// 마이페이지 팔로워
	@RequestMapping(value = "/myPageFollower")
	public ModelAndView myPageFollower(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {

		mav.setViewName("LES/myPageFollower");

		return mav;

	}

	// 마이페이지 팔로잉
	@RequestMapping(value = "/myPageFollowing")
	public ModelAndView myPageFollowing(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {

		mav.setViewName("LES/myPageFollowing");

		return mav;

	}
	
	// 다른 사용자 페이지
	@RequestMapping(value = "/userPage")
	public ModelAndView userPage(@RequestParam HashMap<String, String> params, ModelAndView mav)
			throws Throwable {
		
		int page = 1;
		int journalCnt = ipjs.journalCnt2(params);

		if(journalCnt != 0)
		{
			mav.addObject("cnt", journalCnt);
		}
		else if(journalCnt == 0)
		{
			mav.addObject("cnt", 0);
		}
		mav.addObject("page", page);

		mav.addObject("userNo", params.get("userNo"));
		mav.setViewName("LES/userPage");


		return mav;

	}

	
	// 자유게시판
	@RequestMapping(value = "/community")
	public ModelAndView community(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {
		int Pages = 1;
		if (params.get("Pages") != null) {
			Pages = Integer.parseInt(params.get("Pages"));
		}
		mav.addObject("Pages", Pages);
		mav.setViewName("LES/community");
		
		return mav;

	}
	//자유게시판- (기본)전체보기
	@RequestMapping(value = "/communityLists", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String communityLists(@RequestParam HashMap<String, String>params) throws Throwable{
		System.out.println(params);
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		int Pages = Integer.parseInt(params.get("Pages"));
		
		int cnt = iEsPopjourneyService.getPostCnt(params);
		PagingBean pb = iPagingService.getPagingBean(Pages, cnt, 20, 5);
		params.put("startCnt", Integer.toString(pb.getStartCount()));
		params.put("endCnt", Integer.toString(pb.getEndCount()));
		
		try {
			List<HashMap<String,String>> list = iEsPopjourneyService.getPostList(params);
			
			if(list != null)
			{
				modelMap.put("msg", "success");
				modelMap.put("list",list);
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
	//자유게시판- 공지사항
		@RequestMapping(value = "/communityNLists", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String communityNLists(@RequestParam HashMap<String, String>params) throws Throwable{
			System.out.println(params);
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			int Pages = Integer.parseInt(params.get("Pages"));
			
			int cnt = iEsPopjourneyService.getPostNCnt(params);
			PagingBean pb = iPagingService.getPagingBean(Pages, cnt, 20, 5);
			params.put("startCnt", Integer.toString(pb.getStartCount()));
			params.put("endCnt", Integer.toString(pb.getEndCount()));
			try {
				List<HashMap<String,String>> list = iEsPopjourneyService.getPostNList(params);
				System.out.println(list);
				
				if(list != null)
				{
					modelMap.put("msg", "success");
					modelMap.put("list",list);
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
		@RequestMapping(value = "/communityCMTLists", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
		@ResponseBody
		public String communityCMTLists(@RequestParam HashMap<String, String>params) throws Throwable{
			System.out.println(params);
			ObjectMapper mapper = new ObjectMapper();
			Map<String, Object> modelMap = new HashMap<String, Object>();
			
			int Pages = Integer.parseInt(params.get("Pages"));
			
			int cnt = iEsPopjourneyService.getPostCMTCnt(params);
			PagingBean pb = iPagingService.getPagingBean(Pages, cnt, 20, 5);
			params.put("startCnt", Integer.toString(pb.getStartCount()));
			params.put("endCnt", Integer.toString(pb.getEndCount()));
			try {
				List<HashMap<String,String>> list = iEsPopjourneyService.getPostCMTList(params);
				System.out.println(list);
				
				if(list != null)
				{
					modelMap.put("msg", "success");
					modelMap.put("list",list);
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
	// 게시글 상세페이지
	@RequestMapping(value = "/post")
	public ModelAndView post(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {
		
		int pages = 1;
		
		if(params.get("pages") != null) {
			pages = Integer.parseInt(params.get("pages"));
		}
		
		try {
			int hit = iEsPopjourneyService.postHit(params);
			HashMap<String, String> data = iEsPopjourneyService.getPost(params);
			HashMap<String, String> likeCheck = iEsPopjourneyService.likeCheck(params);
			
			mav.addObject("data", data);
			mav.addObject("likeCheck", likeCheck);
			mav.addObject("pages", pages);
			
			System.out.println("data >> " + data);
			System.out.println("likeCheck >> " + likeCheck);
			System.out.println("pages >> " + pages);
			
		} catch (Throwable e) {
			e.printStackTrace();
		}
		mav.setViewName("LES/post");
		return mav;
	}

	// 게시글 작성 페이지
	@RequestMapping(value = "/postWrite")
	public ModelAndView postWrite(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {
		
		mav.setViewName("LES/postWrite");

		return mav;

	}
	
	@RequestMapping(value = "/postWrites", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String postWrites(@RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		int postNo = iEsPopjourneyService.getPostNo(params);
		modelMap.put("postNo", postNo);

		try {
			int cnt = iEsPopjourneyService.addPost(params);
			
			if(cnt > 0) {
				modelMap.put("msg", "success");
			} else {
				modelMap.put("msg", "failed");
			}
			
		} catch (Throwable e) {
			e.printStackTrace();
			modelMap.put("msg","error");
		}
		
		return mapper.writeValueAsString(modelMap);
	}
	
	@RequestMapping(value = "/postUpdate")
	public ModelAndView postUpdate(@RequestParam HashMap<String, String> params, ModelAndView mav) throws Throwable {
		
		HashMap<String, String> data = iEsPopjourneyService.editPost(params);
		mav.addObject("data",data);

		mav.setViewName("LES/postUpdate");

		return mav;

	}
	
	@RequestMapping(value = "/postUpdates", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String postUpdate(@RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
			int cnt = iEsPopjourneyService.postUpdate(params);
			
			if(cnt > 0) {
				modelMap.put("msg", "success");
			} else {
				modelMap.put("msg", "failed");
			}
			
		} catch (Throwable e) {
			e.printStackTrace();
			modelMap.put("msg","error");
		}
		
		return mapper.writeValueAsString(modelMap);
	} 
	@RequestMapping(value = "/postDeletes", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String testABDeletes(@RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
			int cnt = iEsPopjourneyService.postDeletes(params);
			
			if(cnt > 0) {
				modelMap.put("msg", "success");
			} else {
				modelMap.put("msg", "failed");
			}
			
		} catch (Throwable e) {
			e.printStackTrace();
			modelMap.put("msg","error");
		}
		
		return mapper.writeValueAsString(modelMap);
	}
	@RequestMapping(value = "/postLikes", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String postLikes(@RequestParam HashMap<String, String> params) throws Throwable {
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
			int cnt = iEsPopjourneyService.addLike(params);
			int notf = iEsPopjourneyService.likeNotf(params);
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
	@RequestMapping(value = "/postLikeCancles", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String postLikeCancles(@RequestParam HashMap<String, String> params, ModelAndView modelAndView) throws Throwable {

		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();

		try {
			int delcnt = iEsPopjourneyService.delLike(params);

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
	
	@RequestMapping(value="/postCmts", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String postCmts(@RequestParam HashMap<String, String> params) throws Throwable {

		ObjectMapper mapper = new ObjectMapper();
		 
		Map<String, Object> modelMap = new HashMap<String, Object>();
		 
		int pages = Integer.parseInt(params.get("pages"));
		
		int cmtCnt = iEsPopjourneyService.getCmtCnt(params);
		
		PagingBean pb = iPagingService.getPagingBean(pages, cmtCnt, 10, 5);
		
		params.put("startCnt", Integer.toString(pb.getStartCount()));
		params.put("endCnt", Integer.toString(pb.getEndCount()));
		
		// 여행일지 세부페이지의 댓글
		List<HashMap<String, String>> cmt = iEsPopjourneyService.getPostCmt(params);
		
		modelMap.put("pb", pb);
		modelMap.put("cmt", cmt);
		
		System.out.println("postCmtsParams >> " + params);
		System.out.println("cmt >> " + cmt);
		 
		return mapper.writeValueAsString(modelMap);
	
	}	
	
	@RequestMapping(value="/postCmtAdds", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String postCmtAdds(@RequestParam HashMap<String, String> params) throws Throwable {
		
		ObjectMapper mapper = new ObjectMapper();
		 
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
		
			int cnt = iEsPopjourneyService.getCmtAdds(params);
			
			int cnt2 = iEsPopjourneyService.getCmtNotf(params);
			
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
	
	@RequestMapping(value="/postCmtEdits", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String postCmtEdits(@RequestParam HashMap<String, String> params) throws Throwable {
		
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
			int cnt = iEsPopjourneyService.getCmtEdits(params);
			
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
	
	@RequestMapping(value="/postCmtCmtAdds", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String postCmtCmtAdds(@RequestParam HashMap<String, String> params) throws Throwable {
		System.out.println("postCmtCmtAdds >> " + params);
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> modelMap = new HashMap<String, Object>();
		try {
			int cnt = iEsPopjourneyService.getCmtCmtAdds(params);
			int cnt2 = iEsPopjourneyService.getCmtCmtNotf(params);
			int cnt3 = iEsPopjourneyService.getCmtCmtNotf2(params);
			
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
	
	@RequestMapping(value="/postCmtDeletes", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String postCmtDeletes(@RequestParam HashMap<String, String> params) throws Throwable {

		ObjectMapper mapper = new ObjectMapper();
		 
		Map<String, Object> modelMap = new HashMap<String, Object>();
		 
		try {
			int cnt = iEsPopjourneyService.getCmtDeletes(params);
			
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
	
	@RequestMapping(value="/postCmtCmtDeletes", method = RequestMethod.POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String postCmtCmtDeletes(@RequestParam HashMap<String, String> params) throws Throwable {
		
		ObjectMapper mapper = new ObjectMapper();
		
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		try {
			int cnt = iEsPopjourneyService.getCmtDeletes(params);
			
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
	
}
