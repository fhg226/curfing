package com.curfing.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.curfing.domain.CurfingVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CurfingmapperTest {//목록 테스트 
	
	@Setter(onMethod_= @Autowired)
	private CurfingMapper mapper;
	
	@Test
	public void testGetList() {
		mapper.getList().forEach(curfing-> log.info(curfing));
	
}

	@Test
	public void testinsert() {
		CurfingVO curfing = new CurfingVO();
		curfing.setRno(4);
		curfing.setCafaname("Cafegogo");
		curfing.setAddress("관악구 봉천1213");
		curfing.setPhone(01022224545);
		curfing.setReply("이 카페는 맛있습니다");
		curfing.setPrice("2000원");
		curfing.setCar("주차 가능");
		curfing.setOpentime("오전10시");
		curfing.setDayoff("일요일");
		curfing.setImage("");
		curfing.setCafeid("sk7878");
		mapper.insert(curfing);
		
		log.info(curfing);
		
	}
	
	@Test
	public void TestinsertKey() {
		CurfingVO curfing = new CurfingVO();
		curfing.setRno(5);
		curfing.setCafaname("Cafegogo insertkey test");
		curfing.setAddress("신림역4번출구");
		curfing.setPhone(01022224545);
		curfing.setReply("이 카페는 맛있습니다");
		curfing.setPrice("2000원");
		curfing.setCar("주차 가능");
		curfing.setOpentime("오전10시");
		curfing.setDayoff("일요일");
		curfing.setImage("");
		curfing.setCafeid("sk7878");
		mapper.insertSelectKey(curfing);
		log.info(curfing);
	}
	
	@Test
	public void testread() {// 한껀 읽어 오기 
		CurfingVO curfing = new CurfingVO();
		curfing = mapper.read(4L);
		log.info(curfing);
	}
	

}