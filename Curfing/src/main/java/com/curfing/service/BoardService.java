package com.curfing.service;

import java.util.List;

import com.curfing.domain.BoardVO;
import com.curfing.domain.Criteria;

public interface BoardService {

	public BoardVO get(Long bno);
	
	public List<BoardVO> getList(Criteria cri);
	
	public int getTotalCount(Criteria cri);
}
