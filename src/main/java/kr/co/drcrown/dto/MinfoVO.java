package kr.co.drcrown.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MinfoVO {
	
	// Don't Fucking Touch This
	
	private int minfoNo;  //의학게시글 코드
//	private String minfoClass; //게시글 분류
	private String minfoTitle; //제목
	private String minfoWriter;  //작성자
	private String minfoContent; //내용
	private Date minfoRegdate; //작성날짜
	private Date minfoUpdate;//수정날짜
	private String minfoCount;//수정날짜
	private String minfoFile; // 파일
	private String memId; // 아이디
	
	private String pccNumber;
	private String pccName;
	
}
