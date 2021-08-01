package com.gdj35.popjourney.common.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

@Aspect
public class CommonAOP {
	//Pointcut -> 적용범위
	//@Pointcut(범위설정)
	/*
	 * 범위
	 * execution -> include필터
	 * !execution -> exclude필터
	 * * -> 모든것
	 * *(..) -> 모든 메소드
	 * .. -> 모든 경로
	 * && -> 필터 추가
	 */
	@Pointcut( "execution(* com.gdj35.popjourney..PopJourneyController.*editInfo(..))"
			+ "|| execution(* com.gdj35.popjourney..PopJourneyController.*editProfile(..))"
			+ "|| execution(* com.gdj35.popjourney..PopJourneyController.*notification(..))"
			+ "|| execution(* com.gdj35.popjourney..PopJourneyController.*timeline(..))"
			+ "|| execution(* com.gdj35.popjourney..PopJourneyController.*myPageBMKDetail(..))"
			+ "|| execution(* com.gdj35.popjourney..PopJourneyController.*journalUpdate(..))"
			+ "|| execution(* com.gdj35.popjourney..PopJourneyController.*myPageMapDetail(..))"
			+ "|| execution(* com.gdj35.popjourney..EsPopJourneyController.*myPage(..))"
			+ "|| execution(* com.gdj35.popjourney..EsPopJourneyController.*myPageFollower(..))"
			+ "|| execution(* com.gdj35.popjourney..EsPopJourneyController.*myPageFollowing(..))"
			+ "|| execution(* com.gdj35.popjourney..EsPopJourneyController.*myPageBMK(..))"
			+ "|| execution(* com.gdj35.popjourney..EsPopJourneyController.*myPageMap(..))"
			+ "|| execution(* com.gdj35.popjourney..EsPopJourneyController.*postUpdate(..))"
			+ "|| execution(* com.gdj35.popjourney..EsPopJourneyController.*postWrite(..))"
			+ "|| execution(* com.gdj35.popjourney..PopJourneyController.*journalWrite(..))"
			+ "|| execution(* com.gdj35.popjourney..JmPopJourneyController.*communityAdmin(..))"
			+ "|| execution(* com.gdj35.popjourney..JmPopJourneyController.*memAdmin(..))"
			+ "|| execution(* com.gdj35.popjourney..JmPopJourneyController.*noticeAdmin(..))"
			+ "|| execution(* com.gdj35.popjourney..JmPopJourneyController.*reportAdmin(..))"
			+ "|| execution(* com.gdj35.popjourney..JmPopJourneyController.*TravelDiaryAdmin(..))"
			+ "|| execution(* com.gdj35.popjourney..JmPopJourneyController.*clientCenterMatterWrite(..))"
			+ "|| execution(* com.gdj35.popjourney..JmPopJourneyController.*clientCenterMatterUpdate(..))")
	
	public void loginCheck() {}
	
	//ProceedingJoinPoint -> 대상 적용 이벤트 필터
	/*
	 * @Before -> 메소드 실행 전
	 * @After -> 메소드 실행 후
	 * @After-returning -> 메소드 정상실행 후
	 * @After-throwing -> 메소드 예외 발생 후
	 * @Around -> 모든 동작시점
	 */
	@Around("loginCheck()")
	public ModelAndView loginCheck(ProceedingJoinPoint joinPoint)
														throws Throwable {
		ModelAndView mav = new ModelAndView();
		
		//Request 객체 취득
		HttpServletRequest request
		= ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		
		
		HttpSession session = request.getSession();
		
		  if(session.getAttribute("sMEM_NO") != null) 
		  {
			  mav = (ModelAndView)joinPoint.proceed(); //기존 이벤트 처리 행위를 이어서 진행
		  } 
		  else 
		  { 
			  mav.setViewName("redirect:loginPlz"); 
		  }	
		
		return mav;
	}
}
