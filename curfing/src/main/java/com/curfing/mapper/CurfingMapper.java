package com.curfing.mapper;

import java.util.List;
import com.curfing.domain.CurfingVO;

public interface CurfingMapper {//다오역할

	public List<CurfingVO> getList();//리스트 나열 
	
	public void insert(CurfingVO curfing);
	
	public void insertSelectKey(CurfingVO curfing);
	
	public CurfingVO read(Long bno);
	
	
}
