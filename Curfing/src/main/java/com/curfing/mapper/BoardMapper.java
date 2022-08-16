package com.curfing.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.curfing.domain.BoardVO;



public interface BoardMapper {

//   @Select("select * from t_board where bno > 0")
   public List<BoardVO> getList();
   
   
   
   public void insert(BoardVO board);
   
   
   public void insertSelectKey(BoardVO board);
   
  
   public BoardVO read(Long bno);
   
//   public void delete(Long bno);
   public int delete(Long bno);
   
   public int update(BoardVO board);
   
   
   public void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount);
}
