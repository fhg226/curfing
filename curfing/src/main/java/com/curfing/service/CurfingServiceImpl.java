package com.curfing.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.curfing.domain.CurfingVO;
import com.curfing.mapper.CurfingMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@RequiredArgsConstructor
public class CurfingServiceImpl implements CurfingService{

		private final CurfingMapper mapper;
		
	@Override
	public List<CurfingVO> getList() {
		log.info("getList..........");
		return mapper.getList(); //리스트 가져다 줌
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
	public CurfingVO get(Long bno) {
		log.info("get....");
		
		return mapper.read(bno);
	}


	
}
