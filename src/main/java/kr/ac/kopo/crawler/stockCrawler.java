package kr.ac.kopo.crawler;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import org.jsoup.*;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import kr.ac.kopo.crawler.vo.StockVO;

public class stockCrawler {
//크롤러
	
	public static void main(String[] args) {

		// Jsoup를 이용해서 https://endic.naver.com/?sLn=kr 크롤링

		String url = "https://finance.naver.com/sise/lastsearch2.nhn"; // 크롤링할 url지정
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

		while (ie1.hasNext()) {

			//제목
			 System.out.print(ie1.next().text() + " : ");
			 
			
			// System.out.println(ie2.next().text()+ie3.next().text());
			/*
			 * // 공백으로 잘라서 배열에 넣기 String list = ie1.next().text(); String[] array =
			 * list.split(" ");
			 * 
			 * 
			 * StockVO vo = new StockVO();
			 * 
			 * // 출력 for (int i = 1; i < array.length; i++) { System.out.println(array[i]);
			 * } System.out.println("-----------------------------");
			 */
			 
			 int cnt = 0;
			 while(ie2.hasNext()) {
				 System.out.print(ie2.next().text());
				 cnt++;
				 if(cnt == 10) {
					 System.out.println();
					 break;
				 }else {
					 System.out.print(", ");
				 }
			 }
			 
		}
		 
		System.out.println("============================================================");

	}
}
