package kr.co.drcrown.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class DocumentVO {
	
	// Don't Fucking Touch This
	
	private String docCode; // 문서서식 코드
	private String docKind; // 서식분류
	private String docUse; // 용도
	private String docContent; // 내용 
	private String docWriter; // 작성자 
    private Date docRegDate = new Date();  //작성일
    private Date docUpdate = new Date();  //수정일
    private String docSym; // 상병명 
	private String docRegNo; // 주민번호
	private String docName; // 환자이름
	private String docState; // 문서발급상태
	private String docPno; //환자 차트 번호

	
}
