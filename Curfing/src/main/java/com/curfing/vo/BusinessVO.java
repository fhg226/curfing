package com.curfing.vo;

public class BusinessVO {
	
	private String membername;
	private String memberid;
	private String memberpwd;
	private String email;
	private String memberJURIRNO;
	private String photo;
	private	String phone;
	
	private int admin;
	
	public String getMembername() {
		return membername;
	}
	public void setMembername(String membername) {
		this.membername = membername;
	}
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public String getMemberpwd() {
		return memberpwd;
	}
	public void setMemberpwd(String memberpwd) {
		this.memberpwd = memberpwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMemberJURIRNO() {
		return memberJURIRNO;
	}
	public void setMemberJURIRNO(String memberJURIRNO) {
		this.memberJURIRNO = memberJURIRNO;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public int getAdmin() {
		return admin;
	}
	public void setAdmin(int admin) {
		this.admin = admin;
	}
	@Override
	public String toString() {
		return "BusinessVO [membername=" + membername + ", memberid=" + memberid + ", memberpwd=" + memberpwd
				+ ", email=" + email + ", memberJURIRNO=" + memberJURIRNO + ", photo=" + photo + ", phone=" + phone
				+ ", admin=" + admin + "]";
	}
	
}
