package kr.ac.kopo.admin.vo;

//어드민 화면에 데이터 불러오기

public class InfoVO {

	//member
	private String id; //회원아이디
	private String name;
	private String password;
	private String type;
	
	private String school;
	private String stu_id;
	private String res_no;
	private String phone;
	private String email;
	private String addr1;
	private String addr2;
	private String addr3;
	private String join_date;
	private String post;
	
	//member_stock
	private String stock_acc;
	private String stock_pw;
	private int stock_bal;
	private String stock_acc_date;
	
	//mem_stock_buy
	//member_bank
	private String bank_id;
	private int bank_id_bal;
	private String bank_id_date;
	private String bank_password;
	
	//bank_trans
	private int your_bank_id;
	private int trans_money;
	private String trans_info;
	private String trans_date;
	
	//mbti
	private int test_count;
	private int score;
	private String quiz_date;
	
	public InfoVO() {
		super();
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getStu_id() {
		return stu_id;
	}

	public void setStu_id(String stu_id) {
		this.stu_id = stu_id;
	}

	public String getRes_no() {
		return res_no;
	}

	public void setRes_no(String res_no) {
		this.res_no = res_no;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public String getAddr3() {
		return addr3;
	}

	public void setAddr3(String addr3) {
		this.addr3 = addr3;
	}

	public String getJoin_date() {
		return join_date;
	}

	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

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

	public String getBank_id() {
		return bank_id;
	}

	public void setBank_id(String bank_id) {
		this.bank_id = bank_id;
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

	public String getBank_password() {
		return bank_password;
	}

	public void setBank_password(String bank_password) {
		this.bank_password = bank_password;
	}

	public int getYour_bank_id() {
		return your_bank_id;
	}

	public void setYour_bank_id(int your_bank_id) {
		this.your_bank_id = your_bank_id;
	}

	public int getTrans_money() {
		return trans_money;
	}

	public void setTrans_money(int trans_money) {
		this.trans_money = trans_money;
	}

	public String getTrans_info() {
		return trans_info;
	}

	public void setTrans_info(String trans_info) {
		this.trans_info = trans_info;
	}

	public String getTrans_date() {
		return trans_date;
	}

	public void setTrans_date(String trans_date) {
		this.trans_date = trans_date;
	}

	public int getTest_count() {
		return test_count;
	}

	public void setTest_count(int test_count) {
		this.test_count = test_count;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public String getQuiz_date() {
		return quiz_date;
	}

	public void setQuiz_date(String quiz_date) {
		this.quiz_date = quiz_date;
	}

	@Override
	public String toString() {
		return "InfoVO [id=" + id + ", name=" + name + ", password=" + password + ", type=" + type + ", school="
				+ school + ", stu_id=" + stu_id + ", res_no=" + res_no + ", phone=" + phone + ", email=" + email
				+ ", addr1=" + addr1 + ", addr2=" + addr2 + ", addr3=" + addr3 + ", join_date=" + join_date + ", post="
				+ post + ", stock_acc=" + stock_acc + ", stock_pw=" + stock_pw + ", stock_bal=" + stock_bal
				+ ", stock_acc_date=" + stock_acc_date + ", bank_id=" + bank_id + ", bank_id_bal=" + bank_id_bal
				+ ", bank_id_date=" + bank_id_date + ", bank_password=" + bank_password + ", your_bank_id="
				+ your_bank_id + ", trans_money=" + trans_money + ", trans_info=" + trans_info + ", trans_date="
				+ trans_date + ", test_count=" + test_count + ", score=" + score + ", quiz_date=" + quiz_date + "]";
	}
	
	
	
	
}
