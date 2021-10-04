package kr.ac.kopo.stock.vo;

public class StockMainVO {
	
	//크롤링한 주식 정보
	private String no;
	private String name;
	private String search_per;
	private String now_p;
	private String ntob;
	private String updown;
	private String howmany;
	private String start_p;
	private String high_p;
	private String low_p;
	private String per;
	private String roe;
	private String crawl_date;
	
	//모의주식할 주식정보
	private String ticker;
	private String stock_name;
	private String end_p;
	private String compare;
	private String stocks_totalprice;
	
	
	//매수할 가격
	private String input_cost; //사고 파는 주식가격
	//몇개 매수
	private int count;
	
	
	
	
	
	
	
	public String getCrawl_date() {
		return crawl_date;
	}


	public void setCrawl_date(String crawl_date) {
		this.crawl_date = crawl_date;
	}


	public int getCount() {
		return count;
	}


	public void setCount(int count) {
		this.count = count;
	}


	public String getInput_cost() {
		return input_cost;
	}


	public void setInput_cost(String input_cost) {
		this.input_cost = input_cost;
	}


	public String getTicker() {
		return ticker;
	}


	public void setTicker(String ticker) {
		this.ticker = ticker;
	}


	public String getStock_name() {
		return stock_name;
	}


	public void setStock_name(String stock_name) {
		this.stock_name = stock_name;
	}


	public String getEnd_p() {
		return end_p;
	}


	public void setEnd_p(String end_p) {
		this.end_p = end_p;
	}


	public String getCompare() {
		return compare;
	}


	public void setCompare(String compare) {
		this.compare = compare;
	}


	public String getStocks_totalprice() {
		return stocks_totalprice;
	}


	public void setStocks_totalprice(String stocks_totalprice) {
		this.stocks_totalprice = stocks_totalprice;
	}


	public StockMainVO() {
		
	}
	
	
	public String getNo() {
		return no;
	}


	public void setNo(String no) {
		this.no = no;
	}


	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSearch_per() {
		return search_per;
	}
	public void setSearch_per(String search_per) {
		this.search_per = search_per;
	}
	public String getNow_p() {
		return now_p;
	}
	public void setNow_p(String now_p) {
		this.now_p = now_p;
	}
	public String getNtob() {
		return ntob;
	}
	public void setNtob(String ntob) {
		this.ntob = ntob;
	}
	public String getUpdown() {
		return updown;
	}
	public void setUpdown(String updown) {
		this.updown = updown;
	}
	public String getHowmany() {
		return howmany;
	}
	public void setHowmany(String howmany) {
		this.howmany = howmany;
	}
	public String getStart_p() {
		return start_p;
	}
	public void setStart_p(String start_p) {
		this.start_p = start_p;
	}
	public String getHigh_p() {
		return high_p;
	}
	public void setHigh_p(String high_p) {
		this.high_p = high_p;
	}
	public String getLow_p() {
		return low_p;
	}
	public void setLow_p(String low_p) {
		this.low_p = low_p;
	}
	public String getPer() {
		return per;
	}
	public void setPer(String per) {
		this.per = per;
	}
	public String getRoe() {
		return roe;
	}
	public void setRoe(String roe) {
		this.roe = roe;
	}


	@Override
	public String toString() {
		return "StockMainVO [no=" + no + ", name=" + name + ", search_per=" + search_per + ", now_p=" + now_p
				+ ", ntob=" + ntob + ", updown=" + updown + ", howmany=" + howmany + ", start_p=" + start_p
				+ ", high_p=" + high_p + ", low_p=" + low_p + ", per=" + per + ", roe=" + roe + ", crawl_date="
				+ crawl_date + ", ticker=" + ticker + ", stock_name=" + stock_name + ", end_p=" + end_p + ", compare="
				+ compare + ", stocks_totalprice=" + stocks_totalprice + ", input_cost=" + input_cost + ", count="
				+ count + "]";
	}


	
	
	


	/*
	 * @Override public String toString() { return "StockMainVO [no=" + no +
	 * ", name=" + name + ", search_per=" + search_per + ", now_p=" + now_p +
	 * ", ntob=" + ntob + ", updown=" + updown + ", howmany=" + howmany +
	 * ", start_p=" + start_p + ", high_p=" + high_p + ", low_p=" + low_p + ", per="
	 * + per + ", roe=" + roe + "]"; }
	 */
	
	
	
}
