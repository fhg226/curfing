package com.curfing.service;

import java.util.List;

import com.curfing.domain.BoardVO;

public interface BoardService {

	public long register(BoardVO board);
	
	public BoardVO get(long bno);
	
	public List<BoardVO> getList();
	
	public int modify(BoardVO board);
	
	public boolean remove(long bno);
	
	
}
