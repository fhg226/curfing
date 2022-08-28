package com.curfing.service;

import java.util.List;

import com.curfing.domain.BoardVO;
import com.curfing.domain.Criteria;
import com.curfing.domain.CurfingVO;
import com.curfing.domain.HashtagVO;
import com.curfing.domain.MemberVO;
import com.curfing.domain.MenuVO;
import com.curfing.domain.ReviewVO;
import com.curfing.domain.UserVO;

public interface BoardService {

   
   


   
   
   public List<BoardVO> getList(Criteria cri);
   
   public List<BoardVO> getListPaging(Criteria cri);
   
   public int getTotal(Criteria cri);
   
   
   //용현님 BoardService 부분

   public long register(BoardVO board);
   
   public BoardVO get(long bno);
   
   
   public int modify(BoardVO board);
   
   public boolean remove(long bno);

   public int regReview(ReviewVO review);

   public UserVO getUser(String userid);
   
   public List<ReviewVO> getReviewList(long bno);

   public List<ReviewVO> getListWithReview();

   public MemberVO getMember(String memberid);

   public int regMenu(MenuVO menu);

   public int regHashtag(HashtagVO hashtag);

   public MenuVO getMenu(long bno);

   public HashtagVO getHashtag(long bno);

   public int modifyM(MenuVO menu);

   public int modifyH(HashtagVO hashtag);

   public boolean removeReview(long rno);

   public boolean removeH(long bno);

   public boolean removeM(long bno);

   public boolean removeAllReview(long bno);
   
   //public List<CurfingVO> getList(); //모두읽기
   

   public List<BoardVO> getList(Criteria cri, int sortBy); 
   //메뉴 정렬 인터페이스
	public int getTotalCount();
	public int updateCount(long bno); //카운트 




   
   
}