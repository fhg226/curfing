package com.curfing.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.curfing.domain.Criteria;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardMapperTests {
	@Autowired
	private BoardMapper mapper;
	
	 /* 게시판 목록 테스트 */
    @Test
    public void testGetList() {
        
        
        List list = mapper.getList();
       /* 일반적 for문 */
        for(int i = 0; i < list.size();i++) {
            log.info("" + list.get(i));
        }
        
       /* foreach문(향상된 for문) */
        for(Object a : list) {
            log.info("" + a);
        }
        
       /* foreach문 & 람다식 */
        list.forEach(board -> log.info("" + board));
        
    }
	
	@Test
	public void testGetListPaging() {
		
		Criteria cri = new Criteria();
		
//		cri.setPageNum(2);
		
		List list = mapper.getListPaging(cri);
		
		list.forEach(board -> log.info("" + board));
		
	}
	
	
	
	
	
	
	
}
