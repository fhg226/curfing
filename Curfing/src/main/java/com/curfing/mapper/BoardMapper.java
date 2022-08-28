package com.curfing.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.curfing.domain.BoardVO;
import com.curfing.domain.Criteria;
import com.curfing.domain.HashtagVO;
import com.curfing.domain.MemberVO;
import com.curfing.domain.MenuVO;
import com.curfing.domain.ReviewVO;
import com.curfing.domain.UserVO;

public interface BoardMapper {

   //게시판 등록
   public List<BoardVO> getList();

   public List<BoardVO> getListPaging(Criteria cri);
   
   public int getTotal(Criteria cri);
  
   
   // 창선님 BoardMapper 부분
   public void insert(BoardVO board);
   
   
   public void insertSelectKey(BoardVO board);
   
  
   public BoardVO read(Long bno);
   

   public int delete(Long bno);
   
   public int update(BoardVO board);
   
   
   public void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount);
   
   
  
 //용현님꺼 
   
   
   public int delete(long bno);
   

   public BoardVO read(long bno);

   public void insertReview(ReviewVO review);
   
   public UserVO getUser(String userid);
   
   public List<ReviewVO> getReviewList(long bno);
   
   public List<ReviewVO> getListWithReview();

   public MemberVO getMember(String memberid);

   public void insertHashtag(HashtagVO hashtag);

   public void insertHashtagBno(HashtagVO hashtag);

   public void insertMenu(MenuVO menu);

   public void insertMenuBno(MenuVO menu);

   public MenuVO getMenu(long bno);

   public HashtagVO getHashtag(long bno);

   public int updateM(MenuVO menu);

   public int updateH(HashtagVO hashtag);

   public int deleteReview(long rno);
   
   public int deleteH(long bno);

   public int deleteM(long bno);
   
   public int deleteAllReview(long bno);
   
   
   //선경님 부분
   
   public List<BoardVO> getListWithPaging(Criteria cri); //페이지 정렬 
   //페이지 목록 
   
   

   
   public int updateCount(long bno);// 카운트 
   
   int getTotalCount();
   
   public List<BoardVO> getListOrderReviewCount(Criteria cri); // 리뷰 많은 순 메뉴 정렬 하기위한 메서드
   public List<BoardVO> getListjjimcount(Criteria cri); // 별점 많은 순 정렬 메서드 
   public List<BoardVO> getupcount(Criteria cri); // 인기 


   



}
   
   