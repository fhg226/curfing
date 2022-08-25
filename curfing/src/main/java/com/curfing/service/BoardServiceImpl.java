package com.curfing.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.curfing.domain.BoardVO;
import com.curfing.domain.HashtagVO;
import com.curfing.domain.MemberVO;
import com.curfing.domain.MenuVO;
import com.curfing.domain.ReviewVO;
import com.curfing.domain.UserVO;
import com.curfing.mapper.BoardMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;


@Service
@Log4j
@RequiredArgsConstructor
public class BoardServiceImpl implements BoardService {

	private final BoardMapper mapper;
	
	@Override
	public int register(BoardVO board) {

		log.info("register----" + board);
		mapper.insert(board);
		
		return board.getBno();
	}

	@Override
	public List<BoardVO> getList() {
		
		log.info("getList......");
		
		return mapper.getList();
	}

	@Override
	public int modify(BoardVO board) {
		
		log.info("modify........." + board);
		
		return mapper.update(board);
	}

	@Override
	public boolean remove(long bno) {
		
		log.info("remove........");
		
		return mapper.delete(bno)==1;
	}

	@Override
	public BoardVO get(long bno) {
		log.info("get.....");
		
		return mapper.read(bno);
	}
	
	@Override
	public UserVO getUser(String userid) {
		log.info("getUser....");
		
		return mapper.getUser(userid);
	}

	@Override
	public int regReview(ReviewVO review) {
		log.info("review....." + review);
		
		mapper.insertReview(review);
		
		return review.getBno();
	}

	@Override
	public List<ReviewVO> getReviewList(long bno) {
		
		log.info("getReview......");
		
		return mapper.getReviewList(bno);
	}

	@Override
	public List<ReviewVO> getListWithReview() {
		log.info("getListWithReview...");
		
		return mapper.getListWithReview();
	}
	
	@Override
	public MemberVO getMember(String memberid) {
		log.info("getMember....");
		
		return mapper.getMember(memberid);
	}
	
	@Override
	public int regMenu(MenuVO menu) {
		log.info("regMenu....." + menu);
		
		mapper.insertMenu(menu);
		mapper.insertMenuBno(menu);
		return menu.getBno();
	}
	
	@Override
	public int regHashtag(HashtagVO hashtag) {
		log.info("regHashtag....." + hashtag);
		
		mapper.insertHashtag(hashtag);
		mapper.insertHashtagBno(hashtag);
		return hashtag.getBno();
	}

	@Override
	public MenuVO getMenu(long bno) {
		log.info("getMenu....");

		return mapper.getMenu(bno);
	}

	@Override
	public HashtagVO getHashtag(long bno) {
		log.info("getHahstag....");
		
		return mapper.getHashtag(bno);
	}

	@Override
	public int modifyM(MenuVO menu) {
		log.info("modify........." + menu);
		
		return mapper.updateM(menu);
	}

	@Override
	public int modifyH(HashtagVO hashtag) {
		log.info("modify........." + hashtag);
		
		return mapper.updateH(hashtag);
	}

	@Override
	public boolean removeReview(long rno) {
		log.info("removeReview........");
		
		return mapper.deleteReview(rno)==1;
	}

}
