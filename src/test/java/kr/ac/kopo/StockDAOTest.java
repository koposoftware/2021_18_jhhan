package kr.ac.kopo;

import static org.junit.Assert.assertNull;

import java.util.HashMap;
import java.util.List;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.board.vo.BoardVO;
import kr.ac.kopo.crawler.dao.StockDAO;
import kr.ac.kopo.crawler.service.CrawlingService;
import kr.ac.kopo.member.vo.BankTransVO;
import kr.ac.kopo.sms.service.certificationService;
import kr.ac.kopo.stock.dao.StockMainDAO;
import kr.ac.kopo.stock.service.StockMainService;
import kr.ac.kopo.stock.vo.StockMainVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/spring/spring-mvc.xml"})
public class StockDAOTest {
	
	//@Autowired
	private StockDAO stockDAO;
	
	
	
	@Autowired
	private CrawlingService service;
		
	private certificationService certiService;
	
	//@Autowired
	private StockMainService sms;
	
	@Autowired
	private StockMainDAO stockMDAO;
	
	@Autowired
	private StockMainService smservice;
	
	@Autowired
	private SqlSessionTemplate sessionTemplate;

	@Ignore
	@Test
	public void 업데이트test() throws Exception {
		

			
		}

	

	@Ignore
	@Test
	public void 전체게시글조회test() throws Exception {

		List<StockMainVO> list = sessionTemplate.selectList("crawl.stock.selectAll");
		for(StockMainVO board:list) {
			System.out.println();
		}
		
	}
	@Ignore
	@Test
	public void showTodayStock() {
//		List<StockMainVO> list = sessionTemplate.selectList("crawl.stock.selectAll");
		List<StockMainVO> list = sms.showTodayStock();
		
		System.out.println("test list : " + list);
	}
 	
	//크롤링
	
	@Test
	public void stockTest() throws Exception{
		service.insert("https://finance.naver.com/sise/lastsearch2.nhn");
	
	}
	@Ignore
	@Test
	public void realTest() throws Exception{
		
		String phoneNum = "\"01047739853\"";
		certiService.certifiedPhoneNumber(phoneNum, "0000");
	}
	@Ignore
	@Test
	public void testtest() throws Exception{
		
		String temp = "\"aa";
		System.out.println(temp);
		
		temp.replaceAll("\"", "");
		System.out.println(temp);
		
		String str = "Hello \"World\"";
		System.out.println("따옴표 포함 : " + str);
		// 따옴표 제거
		str = str.replaceAll("\"", "");
		System.out.println("따옴표 제거 : " + str);

		
	}

	


	
}
