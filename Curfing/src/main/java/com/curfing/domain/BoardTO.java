package com.curfing.domain;

import lombok.Data;

@Data
public class BoardTO {
	private String bno;
	private String subject;
	private String content;
	private String writer;
	private String wdate;
	private String hit;
	private String location;
	private String media;
	private String reply;
	private String heart;
	
	// 현재사용자가 좋아요 누른건지 아닌지
	private String hno;
	// 현재사용자가 즐겨찾기 누른건지 아닌지
	private String fno;
	// 글쓴이 프로필 사진 
	private String profile;
	// 현재 사용자 id
	private String nick;
	
	// 시작 게시물 번호
	private int startRowNum;
	// 끝 게시물 번호
	private int endRowNum;
	// 가져갈 게시물 갯수
	private int rowCount;
}
