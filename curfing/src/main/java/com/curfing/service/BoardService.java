package com.curfing.service;

import java.util.List;

import com.curfing.domain.BoardVO;
import com.curfing.domain.HashtagVO;
import com.curfing.domain.MemberVO;
import com.curfing.domain.MenuVO;
import com.curfing.domain.ReviewVO;
import com.curfing.domain.UserVO;

public interface BoardService {

	public int register(BoardVO board);
	
	public BoardVO get(long bno);
	
	public List<BoardVO> getList();
	
	public int modify(BoardVO board);
	
	public boolean remove(long bno);

	public int regReview(ReviewVO review);

	public UserVO getUser(String userid);
	
	public List<ReviewVO> getReviewList(long bno);

	public List<ReviewVO> getListWithReview();

	public MemberVO getMember(String memberid);

	public int regMenu(MenuVO menu);

	public int regHashtag(HashtagVO hashtag);

	public MenuVO getMenu(long bno);

	public HashtagVO getHashtag(long bno);

	public int modifyM(MenuVO menu);

	public int modifyH(HashtagVO hashtag);

	public boolean removeReview(long rno);

}
