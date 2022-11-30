package kr.co.drcrown.dto;

import java.util.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AttachVO {
	
	
	private int attachNo; 			 //고유번호
	private String uploadPath;	 //저장경로
	private String fileName;  	 //파일명
	private String fileType; 	 //파일형식
	private int noticeNo;          	 //자료실 글번호
	private String attacher; 	 //등록자
	private Date regDate;    	 //등록일
	
	
   private List<AttachVO> attachList;
   
    public List<AttachVO> getAttachList() {
        return attachList;
    }
    public void setAttachList(List<AttachVO> attachList) {
        this.attachList = attachList;
    }
	
}
