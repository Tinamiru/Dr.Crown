package kr.co.drcrown.command;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import kr.co.drcrown.controller.BoardController;
import kr.co.drcrown.dto.NoticeVO;
import lombok.extern.slf4j.Slf4j;


@Slf4j
public class NoticeRegistCommand {

	
	private String noticeTitle;
	private String noticeContent;
	private String noticeWriter;
    private String nccNumber;
    private String nccName;
	private List<MultipartFile> uploadFile;
	

	public String getNoticeTitle() {
        return noticeTitle;
    }
    public void setNoticeTitle(String noticeTitle) {
        this.noticeTitle = noticeTitle;
    }
    
	public String getNoticeContent() {
        return noticeContent;
    }
    public void setNoticeContent(String noticeContent) {
        this.noticeContent = noticeContent;
    }
    public String getNoticeWriter() {
        return noticeWriter;
    }
    public void setNoticeWriter(String noticeWriter) {
        this.noticeWriter = noticeWriter;
    }
    
    
    public String getNccNumber() {
        return nccNumber;
    }
    public void setNccNumber(String nccNumber) {
        this.nccNumber = nccNumber;
    }
    public String getNccName() {
        return nccName;
    }
    public void setNnccName(String nccName) {
        this.nccName = nccName;
    }
    
    
    
    public List<MultipartFile> getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(List<MultipartFile> uploadFile) {
		this.uploadFile = uploadFile;
	}
	
	
	public NoticeVO toNoticeVO() {
	    
	    log.debug("uploadFile : "+this.uploadFile);
	    NoticeVO notice = new NoticeVO();
	    notice.setNoticeContent(this.noticeContent);
	    notice.setNoticeTitle(this.noticeTitle);
	    notice.setNoticeWriter(this.noticeWriter);
	    notice.setNccNumber(this.nccNumber);
	
		return notice;
		
	}
}
