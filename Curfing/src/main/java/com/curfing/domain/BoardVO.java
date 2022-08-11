package com.curfing.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Data
public class BoardVO {
	
	private long rno;
	private long bno;
	private String title;
	private String content;
	private String cafephoto;
	private String writer;
	private Date regdate;
	private Date updatedate;
}
