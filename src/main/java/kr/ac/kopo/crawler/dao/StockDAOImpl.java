package kr.ac.kopo.crawler.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.crawler.vo.StockVO;

@Repository
public class StockDAOImpl implements StockDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void insertStockInfo(List<StockVO> list) {
		System.out.println("stockDAO");
		sqlSessionTemplate.insert("crawl.stock.insertInfo", list);
	}
}
