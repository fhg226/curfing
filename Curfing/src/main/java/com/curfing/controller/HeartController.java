package com.curfing.controller;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.curfing.domain.BoardHeartTO;
import com.curfing.domain.BoardTO;

public class HeartController {

	@ResponseBody
	@RequestMapping(value = "/saveHeart.do")
	public BoardTO save_heart(@RequestParam String bno, HttpSession session) {

	    BoardHeartTO to = new BoardHeartTO();

	    // 게시물 번호 세팅
	    to.setBno(bno);

	    // 좋아요 누른 사람 번호
	    to.setUserno(userrno);

	    // +1된 하트 갯수를 담아오기위함
	    BoardTO pto = heartDao.BoardSaveHeart(to);

	    return pto;
	}

	// 꽉찬하트 클릭시 하트 해제
	@ResponseBody
	@RequestMapping(value = "/removeHeart.do")
	public BoardTO remove_heart(@RequestParam String bno, HttpSession session) {
	    BoardHeartTO to = new BoardHeartTO();

	    // 게시물 번호 세팅
	    to.setBno(bno);

	    // 좋아요 누른 사람 번호 셋팅
	    to.setUserno(userrno);

	    // -1된 하트 갯수를 담아오기위함
	    BoardTO pto = heartDao.BoardRemoveHeart(to);

	    return pto;
	}
	
	
}
