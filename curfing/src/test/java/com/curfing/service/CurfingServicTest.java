package com.curfing.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.curfing.domain.CurfingVO;

import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j

public class CurfingServicTest {
	
	@Setter(onMethod_= @Autowired)
	private CurfingService serivce;

	
	CurfingVO curfing= new CurfingVO();
	
	@Test
	public void testGetList() {
	
		serivce.getList().forEach(curing -> log.info(curing));
	}
	
	@Test
	public void testget() {
		log.info(serivce.get(4L));
	}
}
