package com.curfing.service;

import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.curfing.domain.BoardVO;
import com.curfing.domain.Criteria;
import com.curfing.domain.CurfingVO;
import com.curfing.domain.HashtagVO;
import com.curfing.domain.MemberVO;
import com.curfing.domain.MenuVO;
import com.curfing.domain.ReviewVO;
import com.curfing.domain.UserVO;
import com.curfing.mapper.BoardMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;


@Log4j
@Service
@RequiredArgsConstructor
public class BoardServiceImpl implements BoardService{

   private final BoardMapper mapper;
   
   @Override
   public List<BoardVO> getList(Criteria cri) {
      log.info("getlist 입니다.");
    
      return mapper.getList();
   }

   @Override
   public List<BoardVO> getListPaging(Criteria cri) {
      
      return mapper.getListPaging(cri);
   }


   @Override
   public int getTotal(Criteria cri) {
   
      return mapper.getTotal(cri);
   }
   

   @Override
   public int modify(BoardVO board) {
      
      log.info("modify........." + board);
      
      return mapper.update(board);
   }

   @Override
   public boolean remove(long bno) {
      
      log.info("remove........");
      
      return mapper.delete(bno)==1;
   }

   @Override
   public BoardVO get(long bno) {
      log.info("get.....");
      
      return mapper.read(bno);
   }
   


   
   @Override
   public long register(BoardVO board) {
	
      log.info("register----" + board);
      mapper.insert(board);
      
      return board.getBno();
   }




   @Override
   public UserVO getUser(String userid) {
      log.info("getUser....");
      
      return mapper.getUser(userid);
   }

   @Override
   public int regReview(ReviewVO review) {
      log.info("review....." + review);
      
      mapper.insertReview(review);
      
      return review.getBno();
   }

   @Override
   public List<ReviewVO> getReviewList(long bno) {
      
      log.info("getReview......");
      
      return mapper.getReviewList(bno);
   }

   @Override
   public List<ReviewVO> getListWithReview() {
      log.info("getListWithReview...");
      
      return mapper.getListWithReview();
   }
   
   @Override
   public MemberVO getMember(String memberid) {
      log.info("getMember....");
      
      return mapper.getMember(memberid);
   }
   
   @Override
   public int regMenu(MenuVO menu) {
      log.info("regMenu....." + menu);
      
      mapper.insertMenu(menu);
      mapper.insertMenuBno(menu);
      return menu.getBno();
   }
   
   @Override
   public int regHashtag(HashtagVO hashtag) {
      log.info("regHashtag....." + hashtag);
      
      mapper.insertHashtag(hashtag);
      mapper.insertHashtagBno(hashtag);
      return hashtag.getBno();
   }
   
   @Override
   public MenuVO getMenu(long bno) {
      log.info("getMenu....");

      return mapper.getMenu(bno);
   }

   @Override
   public HashtagVO getHashtag(long bno) {
      log.info("getHahstag....");
      
      return mapper.getHashtag(bno);
   }
   
   
   @Override
   public int modifyM(MenuVO menu) {
      log.info("modify........." + menu);
      
      return mapper.updateM(menu);
   }

   @Override
   public int modifyH(HashtagVO hashtag) {
      log.info("modify........." + hashtag);
      
      return mapper.updateH(hashtag);
   }

   @Override
   public boolean removeReview(long rno) {
      log.info("removeReview........");
      
      return mapper.deleteReview(rno)==1;
   }

   
   @Override
   public List<BoardVO> getList(Criteria cri, int sortBy) {
      log.info("getList..........");
      log.info("getList with criteria ===> " + cri);
      List<BoardVO> list = null;
      
      switch(sortBy) {//메뉴 정렬 조회 
         case 1: {
        	  list = mapper.getListWithPaging(cri); //리스트 가져다 줌
              list = list.stream()
                    .sorted(Comparator.comparing(BoardVO::getBno)
                          .reversed())
                    .collect(Collectors.toList());
            break;
         }
         case 2: {
        	 list = mapper.getupcount(cri);
         //인기 카운트  
            break; 
         }
         case 3: {
              list = mapper.getListOrderReviewCount(cri); //요즘뜨는 : 댓글 많은 순위 
              //게시물 테이블 bno 랑 리뷰 테이블 bno fk key  조인후 내림차순정렬 xml 에 sql 문 완료 
            break;
         }
         case 4: {
             list = mapper.getListWithPaging(cri); //리스트 가져다 줌
               list = list.stream()
                     .sorted(Comparator.comparing(BoardVO::getBno)
                           .reversed())
                     .collect(Collectors.toList());   //최신순 
                  //게시물 테이블 bno 내림차순으로 정렬 해서 최근 등록된 순위 로 보여주기 
            break;
         }
      }
       
      
      
      return list;
   }
   
   @Override
   public int getTotalCount() {
      
      log.info("get total count.....");
      return mapper.getTotalCount();
   }



	@Override
	public int updateCount(long bno) {
		return mapper.updateCount(bno);
		//카운트  => 메서드 생성 
	}

   @Override
   public boolean removeH(long bno) {
      log.info("removeH........");
      
      return mapper.deleteH(bno)==1;
   }

   @Override
   public boolean removeM(long bno) {
      log.info("removeM........");
      
      return mapper.deleteM(bno)==1;
   }

   @Override
   public boolean removeAllReview(long bno) {
      log.info("removeAllReview........");
      
      return mapper.deleteAllReview(bno)==1;
   }

   
   
   
}