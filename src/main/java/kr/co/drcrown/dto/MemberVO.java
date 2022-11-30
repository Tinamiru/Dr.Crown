package kr.co.drcrown.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVO {
	
	// Don't Fucking Touch This
	
	private String memId; // 사원번호
	private String memPwd; // 비밀번호
	private String memName; // 이름
	private String memMail; // 이메일
	private String memPhone; // 연락처
	private Date memBir; // 생년월일 
	private int memEnabled; // 퇴사여부
	private Date memLeavedate; // 퇴사일자
	private String memAuthority; // 권한
	private Date memLogindate; // 로그인일자
	private String memPic; // 프로필사진
	private String memFace; // 얼굴사진
	private String memFinger; // 지문사진
	private String memAddr; // 기본주소
	private String memAddr2; // 상세주소
	private String memPcode; // 우편번호
	private String memOfcps; // 직위
	private String memRspofc; // 직책
	private Date memRegdate; // 직책
	private String memIsfirst; // 첫로그인
	


}
