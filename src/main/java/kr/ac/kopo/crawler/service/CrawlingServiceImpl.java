package kr.ac.kopo.crawler.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import kr.ac.kopo.crawler.CrawlingMapper;
import kr.ac.kopo.crawler.dao.StockDAO;
import kr.ac.kopo.crawler.vo.StockVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Service
@Log4j
public class CrawlingServiceImpl implements CrawlingService {

	@Autowired
	private StockDAO stockDAO;

	@Setter
	private CrawlingMapper mapper;

	
	public void insert(String url) {

		url = "https://finance.naver.com/sise/lastsearch2.nhn"; // 크롤링할 url지정
		Document doc = null; // Document에는 페이지의 전체 소스가 저장된다

		try {

			doc = Jsoup.connect(url).get();

		} catch (IOException e) {

			e.printStackTrace();

		}

		// select를 이용하여 원하는 태그를 선택한다. select는 원하는 값을 가져오기 위한 중요한 기능이다.
		// ==>원하는 값들이 들어있는 덩어리를 가져온다
		Elements element = doc.select("tbody");

		System.out.println("============================================================");

		// Iterator을 사용하여 하나씩 값 가져오기
		// 덩어리안에서 필요한부분만 선택하여 가져올 수 있다.

		// 제목 : .tltle
		// 숫자 : .number (10개씩)

		Iterator<Element> ie1 = element.select("a").iterator();

		// Iterator<Element> ie2 = element.select("td.number").iterator();
		// Iterator<Element> ie3 = element.select("td.no").iterator();

		Iterator<Element> ie2 = element.select("td.number").iterator();
		
		List<StockVO> list = new ArrayList<StockVO>();

		StockVO stockVO;
		while (ie1.hasNext()) {
			stockVO = new StockVO();
			// 제목
			String title = ie1.next().text();

			stockVO.setName(title);
			stockVO.setSearch_per(ie2.next().text());
			stockVO.setNow_p(ie2.next().text());
			stockVO.setNtob(ie2.next().text());
			stockVO.setUpdown(ie2.next().text());
			stockVO.setHowmany(ie2.next().text());
			stockVO.setStart_p(ie2.next().text());
			stockVO.setHigh_p(ie2.next().text());
			stockVO.setLow_p(ie2.next().text());
			stockVO.setPer(ie2.next().text());
			stockVO.setRoe(ie2.next().text());

			System.out.println(stockVO);
			list.add(stockVO);

			
		}
		stockDAO.insertStockInfo(list);

		// System.out.println("list");
	}
	
	public static void main(String[] args) {
		CrawlingServiceImpl c = new CrawlingServiceImpl();
		c.insert("https://finance.naver.com/sise/lastsearch2.nhn");
	}
}
