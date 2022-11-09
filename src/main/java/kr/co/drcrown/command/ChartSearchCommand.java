package kr.co.drcrown.command;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ChartSearchCommand {
    private String keyword;
    private String searchType;
}
