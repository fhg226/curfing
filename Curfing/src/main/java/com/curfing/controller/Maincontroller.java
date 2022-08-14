package com.curfing.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.curfing.domain.Criteria;
import com.curfing.service.BoardService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequiredArgsConstructor
public class Maincontroller {

	private final BoardService service;
	
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
	
	// 인기페이지 이동
	@RequestMapping(value="/popular", method = RequestMethod.GET)
	public String popular(Criteria cri, Model model) {
	log.info("popular 입니다.");
	
	model.addAttribute("List",service.getList(cri));
	
	return "/board/popular";
}
	
	// 별점 페이지로 이동
	@RequestMapping(value="/scope", method = RequestMethod.GET)
	public String scope(Criteria cri, Model model) {
		log.info("scope 입니다.");
		
		model.addAttribute("List",service.getList(cri));
		
		return "/board/scope";
	}
	
	//요즘 뜨는 페이지로 이동
	@RequestMapping(value="/rising", method = RequestMethod.GET)
	public String rising(Criteria cri, Model model) {
		log.info("rising 입니다.");
		
		model.addAttribute("List",service.getList(cri));
		
		return "/board/rising";
	}
	
	//분위기 페이지로 이동
	@RequestMapping(value="/atmosphere", method = RequestMethod.GET)
	public String atmosphere(Criteria cri, Model model) {
		log.info("atmosphere 입니다.");
		
		model.addAttribute("List",service.getList(cri));
		
		return "/board/atmosphere";
	}
	
	//검색 결과 리스트
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public String list() {
		log.info("list 입니다.");
		return "/board/list";
	}
	
	
	
	
	
	
	
	
}
