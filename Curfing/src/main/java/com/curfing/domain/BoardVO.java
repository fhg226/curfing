package com.curfing.domain;

import java.util.Date;

import lombok.Data;


public class BoardVO {
	
	private long bno;
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	private Date updatedate;
}
