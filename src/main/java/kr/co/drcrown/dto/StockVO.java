package kr.co.drcrown.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class StockVO {

    // Don't Fucking Touch This
    

    private String equipCode;
    private String equipName;
    private Date equipDate;
    private int equipStock;
    private int equipSuggest;
    private int equipMin;
    private String equipMaker;
    private String equipDistr;
    private String equipPicture;
    private int equipPrice;
    private String equipCategory;
    
    private String[] orederList;
    
    
    
    /*
     * private String durgCode;
     * private String durgName;
     * private Date durgDate;
     * private int durgStock;
     * private String durgMaker;
     * private String durgDistr;
     * private String durgSpec;
     * private String durgPicture;
     * private int durgPrice;
     */

    /*
     * private String conCode;
     * private String conName;
     * private Date conDate;
     * private int conStock;
     * private String conUnit;
     * private String conMaker;
     * private String conDistr;
     * private String conSpec;
     * private String conPicture;
     * private int conPrice;
     * private int conSuggest;
     * private int conMin;
     * 
     * private String mediCode;
     * private String mediName;
     * private Date mediDate;
     * private int mediStock;
     * private String mediMaker;
     * private String mediDistr;
     * private String mediSpec;
     * private String mediPicture;
     * private int mediPrice;
     * private int mediSuggest;
     * private int mediMin;
     */

    /*
     * private String dstCode;
     * private String drugNo;
     * private String dstName;
     * private String dstElement;
     * private int dstStock;
     * private String dstUnit;
     * private String dstMaker;
     * private String dstNO;
     * private Date dstDate;
     * private int dstPrice;
     * private int dstSuggest;
     * private int dstiMin;
     */

}
