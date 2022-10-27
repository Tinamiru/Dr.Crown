package kr.co.drcrown.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MinfoVO {
	
	// Don't Fucking Touch This
	
	private String mInfoNo;  //의학게시글 코드
	private String mInfoClass; //게시글 분류
	private String mInfoTitle; //제목
	private String mInfoWriter;  //작성자
	private String mInfoContent; //내용
	private Date mInfoRegdate; //작성날짜
	private Date mInfoUpdate;//수정날짜
	private String mInfoCount;//수정날짜
	private String mInfoFile; // 파일
	private String memId; // 아이디
	
	
	
}
