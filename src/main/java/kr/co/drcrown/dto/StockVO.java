package kr.co.drcrown.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
public class StockVO {
	
	// Don't Fucking Touch This
	
	private String equCode;
	private String equName;
	private Date equDate;
	private int equStock;
	private String equUnit;
	private String equMaker;
	private String equDistr;
	private String equSpec;
	private String equPicture;
	private int equPrice;
	
	private String durgCode;
	private String durgName;
	private Date durgDate = new Date();
	private String durgAmount;
	private String durgMaker;
	private String durgDistr;
	private String durgSpec;
	private String durgPicture;
	private int durgPrice;
	
	private String consumeCode;
	private String consumeName;
	private Date consumeDate = new Date();
	private String consumeAmount;
	private String consumeMaker;
	private String consumeDistr;
	private String consumeSpec;
	private String consumePicture;
	private int consumePrice;
	
	private String medideviceCode;
	private String medideviceName;
	private Date medideviceDate = new Date();
	private String medideviceAmount;
	private String medideviceMake;
	private String medideviceDistr;
	private String medideviceSpec;
	private String medidevicePicture;
	private int medidevicePrice;
	
	
}
	