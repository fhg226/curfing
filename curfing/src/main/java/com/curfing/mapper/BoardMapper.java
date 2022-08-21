package com.curfing.mapper;

import java.util.List;

import com.curfing.domain.BoardVO;
import com.curfing.domain.HashtagVO;
import com.curfing.domain.MemberVO;
import com.curfing.domain.MenuVO;
import com.curfing.domain.ReviewVO;
import com.curfing.domain.UserVO;

public interface BoardMapper {

	public List<BoardVO> getList();
	
	public void insert(BoardVO board);
	
	public int delete(long bno);
	
	public int update(BoardVO board);

	public BoardVO read(long bno);

	public void insertReview(ReviewVO review);
	
	public UserVO getUser(String userid);
	
	public List<ReviewVO> getReviewList(long bno);
	
	public List<ReviewVO> getListWithReview();

	public MemberVO getMember(String memberid);

	public void insertHashtag(HashtagVO hashtag);

	public void insertMenu(MenuVO menu);
}
