package com.curfing.domain;

import java.util.Date;

import lombok.Data;

@Data
public class UserVO {

	private long uno;
	private String username;
	private Date birthday;
	private String userid;
	private String pwd;
	private String email;
	private String phone;
	private int admin;
	
}
