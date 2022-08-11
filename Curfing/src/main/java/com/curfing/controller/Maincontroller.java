package com.curfing.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequiredArgsConstructor
public class Maincontroller {

	
	//메인페이지 이동
	@RequestMapping(value="/main", method = RequestMethod.GET)
		public String main() {
		log.info("main 입니다.");
		return "/board/main";
	}
	
	//모달 연습 이동
	@RequestMapping(value="/modal", method = RequestMethod.GET)
	public String modal() {
		log.info("modal 입니다.");
		return "/board/modal";
	}
	

	
	
}
