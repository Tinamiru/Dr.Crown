package kr.co.drcrown.dto;

import java.util.Date;

public class DocumentVO {
	
	private String docCode;          		  // 문서서식코드
	private String formCode;       		  // 문서양식코드
	private String docKind;    			  // 서식분류
	private String docUse;     			  // 용도
	private String docContent;    			  // 내용
	private String docWriter;     			  // 작성자
	private Date docRegdate = new Date();    // 작성일
	private Date docUpdate = new Date();     // 수정일
	private String docSym;			          // 상병명
	private String docRegno;			      // 주민번호
	private String docName;			      // 환자이름
	
	
	public String getDocCode() {
		return docCode;
	}
	public void setDocCode(String docCode) {
		this.docCode = docCode;
	}
	public String getFormCode() {
		return formCode;
	}
	public void setFormCode(String formCode) {
		this.formCode = formCode;
	}
	public String getDocKind() {
		return docKind;
	}
	public void setDocKind(String docKind) {
		this.docKind = docKind;
	}
	public String getDocUse() {
		return docUse;
	}
	public void setDocUse(String docUse) {
		this.docUse = docUse;
	}
	public String getDocContent() {
		return docContent;
	}
	public void setDocContent(String docContent) {
		this.docContent = docContent;
	}
	public String getDocWriter() {
		return docWriter;
	}
	public void setDocWriter(String docWriter) {
		this.docWriter = docWriter;
	}
	public Date getDocRegdate() {
		return docRegdate;
	}
	public void setDocRegdate(Date docRegdate) {
		this.docRegdate = docRegdate;
	}
	public Date getDocUpdate() {
		return docUpdate;
	}
	public void setDocUpdate(Date docUpdate) {
		this.docUpdate = docUpdate;
	}
	public String getDocSym() {
		return docSym;
	}
	public void setDocSym(String docSym) {
		this.docSym = docSym;
	}
	public String getDocRegno() {
		return docRegno;
	}
	public void setDocRegno(String docRegno) {
		this.docRegno = docRegno;
	}
	public String getDocName() {
		return docName;
	}
	public void setDocName(String docName) {
		this.docName = docName;
	}
	
	

	  					
}
	