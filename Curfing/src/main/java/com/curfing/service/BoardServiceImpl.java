package com.curfing.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.curfing.domain.BoardVO;
import com.curfing.domain.Criteria;
import com.curfing.mapper.BoardMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@RequiredArgsConstructor
public class BoardServiceImpl implements BoardService{

	private final BoardMapper mapper;
	
	@Override
	public BoardVO get(Long bno) {
		log.info("get 입니다");
		
		return mapper.read(bno);
	}

	@Override
	public List<BoardVO> getList(Criteria cri) {
		log.info("getlist 입니다.");
		
		return mapper.getList();
	}

	@Override
	public int getTotalCount(Criteria cri) {
		// TODO Auto-generated method stub
		return 0;
	}

}
