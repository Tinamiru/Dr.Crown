package kr.co.drcrown.dao;

import java.sql.SQLException;
import java.util.List;

import kr.co.drcrown.dto.MenuVO;


public interface MenuDAO {
	
	List<MenuVO> selectMainMenu() throws SQLException;
	
	List<MenuVO> selectSubMenu(String mCode) throws SQLException;
	
	MenuVO selectMenuByMcode(String mCode) throws SQLException;
	MenuVO selectMenuByMname(String mName) throws SQLException;
}
