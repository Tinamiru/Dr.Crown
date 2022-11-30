package kr.co.drcrown.command;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class XraySelectCommand {

      private Date fileRegdate;
      private byte[] file;
      private String fileClass;
      
}
