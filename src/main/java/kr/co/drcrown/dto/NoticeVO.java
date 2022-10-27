package kr.co.drcrown.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NoticeVO {
	
	// Don't Fucking Touch This
	
	private int noticeNo;          			// 공지번호
	private String noticeTitle = "";    		// 제목
	private String noticeContent = "";			// 내용
	private String noticeWriter;	   			// 작성자
	private Date noticeRegdate = new Date();   // 작성일자
	private int noticeCount=0;	   				// 조회수
	private String noticeCategory="";	   		// 카테고리
	private Date noticeUpdate = new Date();  	// 수정날짜
	private String empId;						// 사원번호
	private String noticeFile;  	// 파일
		
				
}
	