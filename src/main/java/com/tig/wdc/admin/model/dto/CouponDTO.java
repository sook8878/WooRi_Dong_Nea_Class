package com.tig.wdc.admin.model.dto;

public class CouponDTO {

	private int couponNo;
	private String couponType;
	private String couponName;
	private int discount;
	private java.sql.Date issueDate;
	private java.sql.Date startDate;
	private java.sql.Date endDate;
	private String useStatus;
	private int discountCondition;
	
	public CouponDTO() {
		super();
	}

	public CouponDTO(int couponNo, String couponType, String couponName, int discount, java.sql.Date issueDate,
			java.sql.Date startDate, java.sql.Date endDate, String useStatus, int discountCondition) {
		super();
		this.couponNo = couponNo;
		this.couponType = couponType;
		this.couponName = couponName;
		this.discount = discount;
		this.issueDate = issueDate;
		this.startDate = startDate;
		this.endDate = endDate;
		this.useStatus = useStatus;
		this.discountCondition = discountCondition;
	}

	public int getCouponNo() {
		return couponNo;
	}

	public void setCouponNo(int couponNo) {
		this.couponNo = couponNo;
	}

	public String getCouponType() {
		return couponType;
	}

	public void setCouponType(String couponType) {
		this.couponType = couponType;
	}

	public String getCouponName() {
		return couponName;
	}

	public void setCouponName(String couponName) {
		this.couponName = couponName;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public java.sql.Date getIssueDate() {
		return issueDate;
	}

	public void setIssueDate(java.sql.Date issueDate) {
		this.issueDate = issueDate;
	}

	public java.sql.Date getStartDate() {
		return startDate;
	}

	public void setStartDate(java.sql.Date startDate) {
		this.startDate = startDate;
	}

	public java.sql.Date getEndDate() {
		return endDate;
	}

	public void setEndDate(java.sql.Date endDate) {
		this.endDate = endDate;
	}

	public String getUseStatus() {
		return useStatus;
	}

	public void setUseStatus(String useStatus) {
		this.useStatus = useStatus;
	}

	public int getDiscountCondition() {
		return discountCondition;
	}

	public void setDiscountCondition(int discountCondition) {
		this.discountCondition = discountCondition;
	}

	@Override
	public String toString() {
		return "CouponDTO [couponNo=" + couponNo + ", couponType=" + couponType + ", couponName=" + couponName
				+ ", discount=" + discount + ", issueDate=" + issueDate + ", startDate=" + startDate + ", endDate="
				+ endDate + ", useStatus=" + useStatus + ", discountCondition=" + discountCondition + "]";
	}

}
