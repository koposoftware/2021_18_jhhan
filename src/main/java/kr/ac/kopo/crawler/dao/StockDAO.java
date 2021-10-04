package kr.ac.kopo.crawler.dao;

import java.util.List;

import kr.ac.kopo.crawler.vo.StockVO;

public interface StockDAO {

	void  insertStockInfo(List<StockVO> list);
}
