package kr.ac.kopo.stock.service;

import java.util.List;

import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.stock.vo.MyStockVO;
import kr.ac.kopo.stock.vo.StockMainVO;

public interface StockMainService {

	List<StockMainVO> showTodayStock();
	List<StockMainVO> playStockOne();
	List<StockMainVO> playStockTwo();
	
	void stockBuy(StockMainVO buy, MemberVO user);
	List<MyStockVO> MyStock ();
	
	List<MyStockVO> MyList(MemberVO user);

	//매도
	void stockSell(StockMainVO sell,MemberVO user);
	List<MyStockVO> MyList2( MemberVO user);
	
}
