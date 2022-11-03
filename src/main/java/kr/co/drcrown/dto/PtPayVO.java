package kr.co.drcrown.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PtPayVO {
    private String ppayNO;
    private String cdCode;
    private Date ppayDate;
    private int ppayMyamount;
    private int ppayCash;
    private int ppayCard;
    private int ppayNonpay;
    private int ppayPaid;
    private int ppayMem;
    private int ppayMemo;
    private int ppayCancel;
    private int ppayCdate;
    
}
