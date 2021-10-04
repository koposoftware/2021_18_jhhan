package kr.ac.kopo.crawler.vo;

import lombok.Data;


public class StockVO {
	
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

	public StockVO() {
		// TODO Auto-generated constructor stub
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
		return "StockVO [name=" + name + ", search_per=" + search_per + ", now_p=" + now_p + ", ntob=" + ntob
				+ ", updown=" + updown + ", howmany=" + howmany + ", start_p=" + start_p + ", high_p=" + high_p
				+ ", low_p=" + low_p + ", per=" + per + ", roe=" + roe + "]";
	}
	

}
	