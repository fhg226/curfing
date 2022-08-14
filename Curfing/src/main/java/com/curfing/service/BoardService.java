package com.curfing.service;

import java.util.List;

import com.curfing.domain.BoardVO;
import com.curfing.domain.Criteria;

public interface BoardService {

	
	public List<BoardVO> getList(Criteria cri);
	
	public List<BoardVO> getListPaging(Criteria cri);
	
	public int getTotal(Criteria cri);
}
