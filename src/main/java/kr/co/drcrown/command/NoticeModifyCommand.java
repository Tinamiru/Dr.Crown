package kr.co.drcrown.command;

import java.util.List;

import kr.co.drcrown.dto.NoticeVO;

public class NoticeModifyCommand extends NoticeRegistCommand{

	private int noticeNo;
	private List<Integer> deleteFile;
	
	public int getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}
	public List<Integer> getDeleteFile() {
		return deleteFile;
	}
	public void setDeleteFile(List<Integer> deleteFile) {
		this.deleteFile = deleteFile;
	}




	@Override
	public NoticeVO toNoticeVO(){
		NoticeVO notice = super.toNoticeVO();
		notice.setNoticeNo(noticeNo);	
		
		return notice;
	}
	
}
