package kr.ac.kopo.stock.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.stock.vo.MyStockVO;
import kr.ac.kopo.stock.vo.StockMainVO;

public interface StockMainDAO {

	List<StockMainVO> showTodayStock();
	
	List<StockMainVO> playStock01();
	List<StockMainVO> playStock02();

	void updateBal(HashMap<String, Object> map);
	
	List<MyStockVO> getMyStock ();
	
	
	List<MyStockVO> getMyList (MemberVO user);
	void updateBal2(HashMap<String, Object> map);
	
	List<MyStockVO> getMyList2 (MemberVO user);
}
