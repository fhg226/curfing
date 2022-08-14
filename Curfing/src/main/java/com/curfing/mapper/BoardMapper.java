package com.curfing.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.curfing.domain.BoardVO;
import com.curfing.domain.Criteria;



public interface BoardMapper {

	//게시판 등록
   public List<BoardVO> getList();

   public List<BoardVO> getListPaging(Criteria cri);
   
   public int getTotal(Criteria cri);
  
   
   
   
   
}
