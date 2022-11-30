package kr.co.drcrown.command;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PatCommand {
    private String keyword;
    private String searchType;
    private String filterType;
    private String strDate;
    private String endDate;
}
