package com.curfing.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.curfing.domain.CurfingVO;
import com.curfing.service.CurfingService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequiredArgsConstructor
@Log4j
@RequestMapping("/curfing/*")
public class StarController {

	private CurfingService service;
	
	@GetMapping("/scope") //페이지 열기  연결 인기
	public String get(Model model) {
	
		
		return "scope";
	}
}
