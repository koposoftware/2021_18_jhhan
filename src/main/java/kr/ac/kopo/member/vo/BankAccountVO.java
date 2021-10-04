package kr.ac.kopo.member.vo;

public class BankAccountVO {

	//은행계좌개설
	private String bank_username;
	private String bank_res_no;
	private String bank_type; //어떤 계좌 개설(종류 하나만)
	private String bank_aim; //통장별칭 및 사용 목적
	private String bank_check; //개인정보 동의여부
	
	private String bank_email;
	private String bank_addr1;
	private String bank_addr2;
	private String bank_addr3;
	private String bank_phone;
	private String bank_password;
	
	private String bank_id; //계좌번호
	private String bank_identi; //학생증
	private String user_id;
	private String bank_id_date; //계좌 개설 날짜
	private int bank_id_bal; // 계좌잔액
	
	
	
	
	
	//은행계좌
		
		public BankAccountVO() {
		super();
	}
		
		
		
		
		public int getBank_id_bal() {
			return bank_id_bal;
		}




		public void setBank_id_bal(int bank_id_bal) {
			this.bank_id_bal = bank_id_bal;
		}




		public String getBank_id_date() {
			return bank_id_date;
		}
		
		public void setBank_id_date(String bank_id_date) {
			this.bank_id_date = bank_id_date;
		}

		public String getUser_id() {
			return user_id;
		}


		public void setUser_id(String user_id) {
			this.user_id = user_id;
		}


		public String getBank_username() {
			return bank_username;
		}

		public void setBank_username(String bank_username) {
			this.bank_username = bank_username;
		}

		public String getBank_res_no() {
			return bank_res_no;
		}

		public void setBank_res_no(String bank_res_no) {
			this.bank_res_no = bank_res_no;
		}

		public String getBank_type() {
			return bank_type;
		}

		public void setBank_type(String bank_type) {
			this.bank_type = bank_type;
		}

		public String getBank_aim() {
			return bank_aim;
		}

		public void setBank_aim(String bank_aim) {
			this.bank_aim = bank_aim;
		}

		public String getBank_check() {
			return bank_check;
		}

		public void setBank_check(String bank_check) {
			this.bank_check = bank_check;
		}

		public String getBank_email() {
			return bank_email;
		}

		public void setBank_email(String bank_email) {
			this.bank_email = bank_email;
		}

		
		public String getBank_addr1() {
			return bank_addr1;
		}

		public void setBank_addr1(String bank_addr1) {
			this.bank_addr1 = bank_addr1;
		}

		public String getBank_addr2() {
			return bank_addr2;
		}

		public void setBank_addr2(String bank_addr2) {
			this.bank_addr2 = bank_addr2;
		}

		public String getBank_addr3() {
			return bank_addr3;
		}

		public void setBank_addr3(String bank_addr3) {
			this.bank_addr3 = bank_addr3;
		}

		public String getBank_phone() {
			return bank_phone;
		}

		public void setBank_phone(String bank_phone) {
			this.bank_phone = bank_phone;
		}

		public String getBank_password() {
			return bank_password;
		}

		public void setBank_password(String bank_password) {
			this.bank_password = bank_password;
		}

		public String getBank_id() {
			return bank_id;
		}

		public void setBank_id(String bank_id) {
			this.bank_id = bank_id;
		}

		public String getBank_identi() {
			return bank_identi;
		}

		public void setBank_identi(String bank_identi) {
			this.bank_identi = bank_identi;
		}




		@Override
		public String toString() {
			return "BankAccountVO [bank_username=" + bank_username + ", bank_res_no=" + bank_res_no + ", bank_type="
					+ bank_type + ", bank_aim=" + bank_aim + ", bank_check=" + bank_check + ", bank_email=" + bank_email
					+ ", bank_addr1=" + bank_addr1 + ", bank_addr2=" + bank_addr2 + ", bank_addr3=" + bank_addr3
					+ ", bank_phone=" + bank_phone + ", bank_password=" + bank_password + ", bank_id=" + bank_id
					+ ", bank_identi=" + bank_identi + ", user_id=" + user_id + ", bank_id_date=" + bank_id_date
					+ ", bank_id_bal=" + bank_id_bal + "]";
		}





		
	

		
		
		
		
}
