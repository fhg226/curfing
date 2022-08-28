package com.curfing.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class CurfingVO {
	

	private Long bno;
	private String image;
	private String memberid;
	private String cafename;
	private String address;
	private String phone;
	private String cafeinfo;
	private long price;
	private String car;
	private String opentime;
	private String dayoff;
	private int upcount;
	
	private int rno;
	private String userid;
	private Long replygrade;
	private String reply;
	private Long replydate;
	private Long updatedate;
	
	private String heart;
	private int jno;
	
	
	
	
	
}