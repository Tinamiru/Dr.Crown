package kr.co.drcrown.dto;

import java.util.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CureDlistVO {
    private String pNo;
    private String cdCode;
    private Date cdRegdate;
    private String symKo;
    private String mprKo;
}
