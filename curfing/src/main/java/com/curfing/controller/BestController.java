package com.curfing.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.curfing.service.CurfingService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/curfing")
@AllArgsConstructor
public class BestController {
	private final CurfingService service;
	
		@GetMapping("/popular") //페이지 열기  연결 인기
		public String get(Model model) {
		
		log.info("list");
			model.addAttribute("List", service.getList()); 
			return "popular";
		}
		
		

		@GetMapping("/scope") // 별점
		public String sget(Model model) {
			
			log.info("sget...");
			model.addAttribute("List", service.getList()); 
			return "scope";
		}
		
		@GetMapping("/rising") // 요즘뜨는
		public String rget(Model model) {
			
			log.info("rget...");
			model.addAttribute("List", service.getList()); 
			return "rising";
		}
		
		
		@GetMapping("/atmosphere")// 분위기 
		public String aget(Model model) {
			
			log.info("rget...");
			model.addAttribute("List", service.getList()); 
			return "atmosphere";
		}
		
		
		@GetMapping("/content") // 상세 페이지 
		public String cget(Model model) {
			log.info("cget....");
			model.addAttribute("List",service.getList());
			return "content";
		}
}
