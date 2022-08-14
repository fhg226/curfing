package com.curfing.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.curfing.domain.Criteria;
import com.curfing.mapper.BoardMapperTests;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceTests {

	@Autowired
	private BoardService service;
	
	@Test
	public void testGetListPaging() {
		
		Criteria cri = new Criteria();
		
		List list = service.getListPaging(cri);
		
		list.forEach(board -> log.info("" + board));
	}
	
}
