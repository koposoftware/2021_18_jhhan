package kr.ac.kopo.admin.vo;

public class AdminVO {

	//로그인
	private String id;
	private String password;
	private String name;
	private String type;
	
	//메인화면 정보가져오기
	private int countMember; //총회원수
	private int countSchool; //총학교수 + 일반회원
	private int countMbti; //엠비티아이
	private int bankCount; //은행계좌수
	private int stockCount; //주식계좌수
	
	//협약학교 목록 현황
	private int no;
	private String school;
	private String address;
	private int stu;
	private String add_date;
	
	
	
	
	
	
	
	public int getStockCount() {
		return stockCount;
	}
	public void setStockCount(int stockCount) {
		this.stockCount = stockCount;
	}
	public int getBankCount() {
		return bankCount;
	}
	public void setBankCount(int bankCount) {
		this.bankCount = bankCount;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getStu() {
		return stu;
	}
	public void setStu(int stu) {
		this.stu = stu;
	}
	public String getAdd_date() {
		return add_date;
	}
	public void setAdd_date(String add_date) {
		this.add_date = add_date;
	}
	public int getCountMbti() {
		return countMbti;
	}
	public void setCountMbti(int countMbti) {
		this.countMbti = countMbti;
	}
	public int getCountSchool() {
		return countSchool;
	}
	public void setCountSchool(int countSchool) {
		this.countSchool = countSchool;
	}
	public int getCountMember() {
		return countMember;
	}
	public void setCountMember(int countMember) {
		this.countMember = countMember;
	}
	
	
	public AdminVO() {
		super();
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "AdminVO [id=" + id + ", password=" + password + ", name=" + name + ", type=" + type + ", countMember="
				+ countMember + ", countSchool=" + countSchool + ", countMbti=" + countMbti + ", no=" + no + ", school="
				+ school + ", address=" + address + ", stu=" + stu + ", add_date=" + add_date + "]";
	}
	
	
	
	
	
	
	
}
