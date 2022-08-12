package com.curfing.service;

import java.util.List;

import com.curfing.domain.CurfingVO;

public interface CurfingService {
	
	public CurfingVO get (Long bno); //한껀
	
	public List<CurfingVO> getList(); //모두읽기
	void insert();
	void delete();
	void update();
	
}
