package kr.ac.kopo.crawler;

import java.util.List;

import kr.ac.kopo.crawler.vo.StockVO;

public interface CrawlingMapper {

	public void insertInfo(List<StockVO> list);
}
