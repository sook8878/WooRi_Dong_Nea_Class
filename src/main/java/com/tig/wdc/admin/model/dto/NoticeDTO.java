package com.tig.wdc.admin.model.dto;

import java.sql.Date;

public class NoticeDTO {

	private int noticeNo;
	private String noticeType;
	private String importantYN;
	private String noticeTitle;
	private java.sql.Date writeDate;
	
	public NoticeDTO() {
		super();
	}

	public NoticeDTO(int noticeNo, String noticeType, String importantYN, String noticeTitle, Date writeDate) {
		super();
		this.noticeNo = noticeNo;
		this.noticeType = noticeType;
		this.importantYN = importantYN;
		this.noticeTitle = noticeTitle;
		this.writeDate = writeDate;
	}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public String getNoticeType() {
		return noticeType;
	}

	public void setNoticeType(String noticeType) {
		this.noticeType = noticeType;
	}

	public String getImportantYN() {
		return importantYN;
	}

	public void setImportantYN(String importantYN) {
		this.importantYN = importantYN;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public java.sql.Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(java.sql.Date writeDate) {
		this.writeDate = writeDate;
	}

	@Override
	public String toString() {
		return "NoticeDTO [noticeNo=" + noticeNo + ", noticeType=" + noticeType + ", importantYN=" + importantYN
				+ ", noticeTitle=" + noticeTitle + ", writeDate=" + writeDate + "]";
	}
	
}
