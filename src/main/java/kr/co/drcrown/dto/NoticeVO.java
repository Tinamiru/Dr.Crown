package kr.co.drcrown.dto;

import java.util.Date;
import java.util.List;

import kr.co.drcrown.dto.AttachVO;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class NoticeVO {
	
	// Don't Fucking Touch This
	
	private int noticeNo;          			// 공지번호
//	private String noticeCategory="";	   		// 카테고리
	private String noticeTitle = "";    		// 제목
	private String noticeContent = "";			// 내용
	private String noticeWriter;	   			// 작성자
	private Date noticeRegdate = new Date();   // 작성일자
	private String noticeFile;  	// 파일
	private int noticeCount=0;	   				// 조회수
	private Date noticeUpdate = new Date();  	// 수정날짜
	private String memId;						// 사원번호
		
	
	private String nccNumber;
	private String nccName;
	private String attachNo;
	
	private List<AttachVO> attachList;
	   
	public List<AttachVO> getAttachList() {
	    return attachList;
    }
	public void setAttachSequenceNextValue(List<AttachVO> attachList) {
        this.attachList = attachList;
    }
}
	