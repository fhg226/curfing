package com.curfing.mapper;

import java.util.List;

import com.curfing.domain.BoardVO;
import com.curfing.domain.ReviewVO;
import com.curfing.domain.UserVO;

public interface BoardMapper {

	public List<BoardVO> getList();
	
	public void insert(BoardVO board);
	
	public int delete(long bno);
	
	public int update(BoardVO board);

	public BoardVO read(long bno);

	public void insertReview(ReviewVO review);
	
	public UserVO getUser(long uno);
}
