package kr.ac.kopo;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

	@GetMapping("/")
	public String index() {
		System.out.println("index");
		return "index";
	}
	@GetMapping("/index")
	public String index2() {
		System.out.println("index");
		return "index";
	}
	
	
	  @GetMapping("account/accountMain")
	  public String acMain() {
	  System.out.println("account/accountMain");
	  return "account/accountMain";
	  }
	  
	  
	  @GetMapping("member/quiz")
	  public String quiz() {
		  return "member/quiz";
	  }
	
	
	
	/*
	 * @GetMapping("stock/stockMain") public String stock() {
	 * System.out.println("stock/stockMain"); return "stock/stockMain"; }
	 */

	
	
	

	
	@GetMapping("media/hanaTV")
	public String hanaTV() {
		System.out.println("media/hanaTV");
		return "media/hanaTV";
	}
	
	@GetMapping("stock/playStockStart")
	public String modal() {
		System.out.println("modal");
		return "stock/playStockStart";
	}
}
