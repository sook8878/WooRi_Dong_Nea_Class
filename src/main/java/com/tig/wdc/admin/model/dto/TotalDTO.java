package com.tig.wdc.admin.model.dto;

import java.sql.Date;

public class TotalDTO {

	private int userNo;
	private String userType;
	private String userId;
	private String userName;
	private java.sql.Date enrollDate;
	private int reportedCnt;
	
	public TotalDTO() {}
	
	public TotalDTO(int userNo, String userType, String userId, String userName, Date enrollDate, int reportedCnt) {
		super();
		this.userNo = userNo;
		this.userType = userType;
		this.userId = userId;
		this.userName = userName;
		this.enrollDate = enrollDate;
		this.reportedCnt = reportedCnt;
	}
	
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public java.sql.Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(java.sql.Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	public int getReportedCnt() {
		return reportedCnt;
	}
	public void setReportedCnt(int reportedCnt) {
		this.reportedCnt = reportedCnt;
	}
	@Override
	public String toString() {
		return "TotalDTO [userNo=" + userNo + ", userType=" + userType + ", userId=" + userId + ", userName=" + userName
				+ ", enrollDate=" + enrollDate + ", reportedCnt=" + reportedCnt + "]";
	}

}
