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
	
	private int rno;
	private int bno;
	private int mno;
	private int menuno;
	private String cafename;
	private String address;
	private int phone;
	private String cafeinfo;
	private String price;
	private String car;
	private String opentime;
	private String dayoff;

}
