package com.curfing.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.curfing.domain.BoardVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardMapperTests {

	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;
	
	@Test
	public void testGetList() {
		
		mapper.getList().forEach(board -> log.info(board));
		
	}
	
	@Test
	public void testInsert() {
		
		BoardVO board = new BoardVO();
		board.setCafename("카페 테스트01");
		board.setAddress("주소 테스트01");
		board.setPhone("phoneTest01");
		board.setCafeinfo("test01");
		board.setPrice(1234);
		board.setCar("가능");
		board.setOpentime("1~2");
		board.setDayoff("몇요일");
		board.setSite("www.cafeTest.com");
		board.setMenu("메뉴 테스트");
		
		mapper.insert(board);
		
		log.info(board);
	}
	
	@Test
	public void testDelete() {
		
		int result = mapper.delete(7L);
		
		log.info("delete......");
		log.info("result => " + result);
	}
	
	@Test
	public void testUpdate() {
		
		BoardVO board = new BoardVO();
		board.setBno(3);
		board.setCafename("카페 테스트01");
		board.setAddress("주소 수정");
		board.setPhone("phoneTest02");
		board.setCafeinfo("test02");
		board.setPrice(4321);
		board.setCar("불가능");
		board.setOpentime("시간 수정");
		board.setDayoff("요일 수정");
		board.setSite("홈페이지 수정");
		board.setMenu("메뉴 수정");
		
		int result = mapper.update(board);
		
		log.info("update....");
		log.info("result => " + result);
	}
}
