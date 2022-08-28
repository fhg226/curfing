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
	
	
	
	//용현님 부분


	private long bno;
	private String memberid;
	private String cafename;
	private String address;
	private String phone;
	private String cafeinfo;
	private long price;
	private String car;
	private String opentime;
	private String closetime;
	private String dayoff;
	private String site;
	private String menu;
	private String picture;
	private Date regDate;
	private Date updateDate;
	private int upcount;
	
	
	
}
