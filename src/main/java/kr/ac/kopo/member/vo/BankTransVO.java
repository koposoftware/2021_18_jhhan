package kr.ac.kopo.member.vo;

public class BankTransVO {

	//이체진행
	private String bank_id ;
	private int trans_money;
	private String your_bank_id ;
    
	//이체내역조회
	private String user_id;
	private String bank_type;
	private String trans_info;
	private String bank_id_bal;
	private String trans_date;
	
	
	
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getBank_type() {
		return bank_type;
	}
	public void setBank_type(String bank_type) {
		this.bank_type = bank_type;
	}
	public String getTrans_info() {
		return trans_info;
	}
	public void setTrans_info(String trans_info) {
		this.trans_info = trans_info;
	}
	public String getBank_id_bal() {
		return bank_id_bal;
	}
	public void setBank_id_bal(String bank_id_bal) {
		this.bank_id_bal = bank_id_bal;
	}
	public String getTrans_date() {
		return trans_date;
	}
	public void setTrans_date(String trans_date) {
		this.trans_date = trans_date;
	}
	public BankTransVO() {
		
	}
	public String getBank_id() {
		return bank_id;
	}
	public void setBank_id(String bank_id) {
		this.bank_id = bank_id;
	}

	public int getTrans_money() {
		return trans_money;
	}
	public void setTrans_money(int trans_money) {
		this.trans_money = trans_money;
	}
	
	public String getYour_bank_id() {
		return your_bank_id;
	}
	public void setYour_bank_id(String your_bank_id) {
		this.your_bank_id = your_bank_id;
	}
	
	
	@Override
	public String toString() {
		return "BankTransVO [bank_id=" + bank_id + ", trans_money=" + trans_money + ", your_bank_id=" + your_bank_id
				+ ", user_id=" + user_id + ", bank_type=" + bank_type + ", trans_info=" + trans_info + ", bank_id_bal="
				+ bank_id_bal + ", trans_date=" + trans_date + "]";
	}
	
	

    
    
	
	
}
