package kr.co.drcrown.dto;

import java.util.Date;

public class FileVO {
	
	private String fileCode;          		  // 파일코드
	private String fileClass;       		  // 분류코드
	private String fileName;    			  // 파일 이름
	private Date fileRegdate = new Date();    // 파일등록일자
	private String fileLocation;			  // 파일경로
	
	
	public String getFileCode() {
		return fileCode;
	}
	public void setFileCode(String fileCode) {
		this.fileCode = fileCode;
	}
	public String getFileClass() {
		return fileClass;
	}
	public void setFileClass(String fileClass) {
		this.fileClass = fileClass;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public Date getFileRegdate() {
		return fileRegdate;
	}
	public void setFileRegdate(Date fileRegdate) {
		this.fileRegdate = fileRegdate;
	}
	public String getFileLocation() {
		return fileLocation;
	}
	public void setFileLocation(String fileLocation) {
		this.fileLocation = fileLocation;
	}
	

	  					
}
	