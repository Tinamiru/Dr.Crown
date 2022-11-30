package kr.co.drcrown.command;

import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class TLCCommand {

    //list
    private int tlcCode;
    private String tlcName;
    private List<TSCCommand> tscList;
    
}
