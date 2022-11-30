package kr.co.drcrown.command;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class TSCCommand {

    //list
    private int tscCode;
    private String tscName;
    private int tlcCode;
    private List<TLListCommand> tlList;
    
}
