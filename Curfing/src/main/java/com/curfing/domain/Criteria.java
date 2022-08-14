package com.curfing.domain;

import java.util.Arrays;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Data;

@Data
public class Criteria {
	
	//현재 페이지
	private int pageNum;
	
	//한 페이지 당 보여질 게시물 수
	private int amount;
	
	//검색 타입
	private String type; 
	
	//검색 타입 배열
	private String[] typeArr; 
	
	//검색 키워드
	private String keyword;
	
	
	public Criteria() {
		this(1,10);
	}

	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
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
	
	public String[] getTypeArr() {
		return type == null? new String[] {} : type.split(""); //split-하나씩 분리
	}
	
	public String getListLink() {
		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("")
				.queryParam("pageNum", this.pageNum)
				.queryParam("amount", this.getAmount())
				.queryParam("type", this.getType()) //get으로도 그냥 type으로도 가져와도 상관없다
				.queryParam("keyword", this.keyword);
		
		return builder.toUriString();
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
	
	@Override
	public String toString() {
		return "Criteria [pageNum =" + pageNum + ", amount = " + amount + ", keyword = " + keyword + ", type = " + type
				+ ", typeArr = " + Arrays.toString(typeArr) + "]";
	}
	
}
