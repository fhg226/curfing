package com.curfing.domain;

import java.util.Arrays;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Data;

@Data
public class Criteria {
	
	private int pageNum;
	private int amount;
	
	//검색 키워드
	private String keyword;

	//검색 타입
	private String type; 
	
	//검색 타입 배열
	private String[] typeArr; 
	
	
	public Criteria() {
		this(1,10);
	}

	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public String getListLink() {
		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("")
				.queryParam("pageNum", this.pageNum)
				.queryParam("amount", this.getAmount());
		return builder.toUriString();
	}
	
	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	
	public int getAmount() {
		return amount;
	}
	
	public void setAmount(int amount) {
		this.amount = amount;
	}
		
	public String getKeyword() {
		return keyword;
	}
	
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	public String getType() {
		return type;
	}
	
	public void setType(String type) {
		this.type = type;
		this.typeArr = type.split("");
	}
	
	public String[] getTypeArr() {
		return typeArr;
	}
	
	public void setTypeArr(String[] typeArr) {
		this.typeArr = typeArr;
	}
	
	@Override
	public String toString() {
		return "Criteria [pageNum =" + pageNum + ", amount = " + amount + ", keyword = " + keyword + ", type = " + type
				+ ", typeArr = " + Arrays.toString(typeArr) + "]";
	}
}
