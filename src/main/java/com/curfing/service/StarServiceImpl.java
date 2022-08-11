package com.curfing.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.curfing.domain.StarVO;
import com.curfing.mapper.StarMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@RequiredArgsConstructor
public class StarServiceImpl implements StarService{

		private final StarMapper mapper;
		
	@Override
	public List<StarVO> StarList() {
		log.info("StarList..........");
		return mapper.StarList(); //리스트 가져다 줌
	}

	@Override
	public void insert() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public StarVO get(Long bno) {
		log.info("get....");
		
		return mapper.read(bno);
	}


	
}
