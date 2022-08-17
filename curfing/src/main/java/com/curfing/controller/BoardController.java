package com.curfing.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.curfing.domain.BoardVO;
import com.curfing.domain.ReviewVO;
import com.curfing.service.BoardService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequiredArgsConstructor
@Log4j
@RequestMapping("/board/*")
public class BoardController {
	
	private final BoardService service;
	
	@GetMapping("/list")
	public void list(Model model) {
		
		log.info("list......");
		model.addAttribute("list", service.getList());
		
	}
	
	@GetMapping("/register")
	public void register() {
		
		log.info("register......");
		
	}
	
	@PostMapping("/register")
	public String register(BoardVO board, RedirectAttributes rttr) {
		log.info("register......" + board);
		
		long bno = service.register(board);
		log.info("BNO ======> " + bno);
		
		rttr.addFlashAttribute("result", board.getBno());
		
		return "redirect:/board/list";
	}
	
	@GetMapping("/content")
	public void content(@RequestParam("bno") long bno, Model model) {
		log.info("content......");
		model.addAttribute("content", service.get(bno));
	}

	@GetMapping("/review")
	public void review(@RequestParam("bno") long bno, @RequestParam("uno") long uno, Model model1, Model model2) {
		log.info("review......");
		model1.addAttribute("content", service.get(bno));
		model2.addAttribute("user", service.getUser(uno));
		
	}
	
	@PostMapping("/review")
	public String review(ReviewVO review, RedirectAttributes rttr) {
		log.info("review......" + review);
		
		long bno = service.regReview(review);
		log.info("BNO ======> " + bno);
		
		rttr.addFlashAttribute("result", review.getBno());
		
		return "redirect:/board/content?bno=" + bno;
	}
}
