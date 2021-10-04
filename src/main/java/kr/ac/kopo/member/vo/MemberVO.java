package kr.ac.kopo.member.vo;

public class MemberVO {

	//회원가입
	private String id;
	private String password;
	private String name;
	private String type;
	private String school;
	
	//주식계좌개설
	private String stock_acc;
	private String stock_pw;
	private int stock_bal;
	private String stock_acc_date;
	private int input_cost; //사고 파는 주식 가격.
	
	private int rank;
	private String group;

	
	
	//
	public MemberVO() {
		
	}
	
	
	
	//회원가입
	
	public int getRank() {
		return rank;
	}





	public void setRank(int rank) {
		this.rank = rank;
	}

	
	public String getGroup() {
		return group;
	}
	
	
	
	public void setGroup(String group) {
		this.group = group;
	}


	public String getSchool() {
		return school;
	}



	public void setSchool(String school) {
		this.school = school;
	}



	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}


	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", name=" + name + ", type=" + type + ", school=" + school + ", stock_acc="
				+ stock_acc + ", stock_bal=" + stock_bal + ", rank=" + rank + ", group=" + group + "]";
	}



	//
	public String getStock_acc() {
		return stock_acc;
	}
	public void setStock_acc(String stock_acc) {
		this.stock_acc = stock_acc;
	}
	public String getStock_pw() {
		return stock_pw;
	}
	public void setStock_pw(String stock_pw) {
		this.stock_pw = stock_pw;
	}
	public int getStock_bal() {
		return stock_bal;
	}
	public void setStock_bal(int stock_bal) {
		this.stock_bal = stock_bal;
	}
	public String getStock_acc_date() {
		return stock_acc_date;
	}
	public void setStock_acc_date(String stock_acc_date) {
		this.stock_acc_date = stock_acc_date;
	}
	public int getInput_cost() {
		return input_cost;
	}
	public void setInput_cost(int input_cost) {
		this.input_cost = input_cost;
	}
	
	//
	
	
	
	
}
