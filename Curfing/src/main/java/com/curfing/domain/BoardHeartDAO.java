package com.curfing.domain;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardHeartDAO {

	@Autowired
	private SqlSession sqlSession;
	
	public BoardTO BoardSaveHeart(BoardHeartTO to) {
		// board 테이블에 해당 게시물의 heart수를 +1 하기위한 to세팅
		BoardTO pto = new BoardTO();
		pto.setBno(to.getBno());
		
		// 해당 게시물의 heart를 +1 한다.
		sqlSession.update("Board_heart_up", pto);
		
		// b_heart 테이블에 추가 
		int result = sqlSession.insert("Board_heart_save", to);
		
		if (result == 1) {	// b_heart 테이블에 새로운 좋아요 추가가 성공한다면..
			// 갱신된 하트 갯수를 가져옴
			pto = sqlSession.selectOne("Board_heart_count", pto);
		}
		return pto;
	}

	public BoardTO BoardRemoveHeart(BoardHeartTO to) {
		// board 테이블에 해당 게시물의 heart수를 -1 하기위한 to세팅
		BoardTO pto = new BoardTO();
		pto.setBno(to.getBno());
		
		// 해당 게시물의 heart를 -1 한다.
		sqlSession.update("Board_heart_down", pto);
		
		// b_heart 테이블에서 삭제
		int result = sqlSession.delete("Board_heart_remove", to);
		
		if (result == 1) {	// b_heart 테이블에 좋아요 삭제가 성공한다면..
			// 갱신된 하트 갯수를 가져옴
			pto = sqlSession.selectOne("Board_heart_count", pto);
		}
		return pto;
	}
}