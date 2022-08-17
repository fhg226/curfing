package com.curfing.service;

import java.util.List;

import com.curfing.domain.BoardVO;
import com.curfing.domain.ReviewVO;
import com.curfing.domain.UserVO;

public interface BoardService {

	public long register(BoardVO board);
	
	public BoardVO get(long bno);
	
	public List<BoardVO> getList();
	
	public int modify(BoardVO board);
	
	public boolean remove(long bno);

	public long regReview(ReviewVO review);

	public UserVO getUser(long uno);
	
	
}
