package kr.ac.kopo.crawler.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.crawler.service.CrawlingService;
import lombok.extern.log4j.Log4j;

//@Component //스케쥴러
@Controller
@Log4j
@RequestMapping
public class StockController {

	@Autowired
	private CrawlingService service;
	
	//@Scheduled(fixedDelay=900000) //15분 :1000(1초)*60*15 900000
	@GetMapping("/stock")
	public void stockInfo() {
		
		service.insert("https://finance.naver.com/sise/lastsearch2.nhn");
		System.out.println();
	}
}
