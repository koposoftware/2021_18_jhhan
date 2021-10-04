package kr.ac.kopo.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.admin.dao.AdminDAO;
import kr.ac.kopo.admin.vo.AdminVO;
import kr.ac.kopo.admin.vo.InfoVO;


@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDAO adminDAO; //의존성 자동주입
	

	public AdminVO login(AdminVO admin) {
			
		AdminVO adminVO = adminDAO.login(admin);
			return adminVO;
		}
	
	//회원목록출력
	public List<InfoVO> membinfo(){
		List<InfoVO> infolist = adminDAO.membinfo();
		
		return infolist;
	}
	
	//총회원수보여주기
	public AdminVO countMemer() {
		AdminVO count = adminDAO.countMember();
		
		return count;
	}
	
	//총학교수보여주기
	public AdminVO countSchool() {
		AdminVO count = adminDAO.countSchool();
		return count;
	}
	//은행계좌수 보여주기
	public AdminVO bankCount() {
		AdminVO bank = adminDAO.bankCount();
		return bank;
	}
	//주식참여자수
	public AdminVO stockCount() {
		AdminVO stock = adminDAO.stockCount();
		return stock;
	}
	
	//mbti보여주기
	public AdminVO countMbti() {
		AdminVO count = adminDAO.countMbti();
		return count;
	}
	
	//리포트에 필요한 정보입력(가져오기)
	public List<InfoVO> getinfo(InfoVO info){
		List<InfoVO> infolist = adminDAO.getInfo(info);
		System.out.println("info: "+ infolist);
		return infolist;
	}
	
	//메인화면 협약학교리스트 
	public List<AdminVO> schoolList(){
		List<AdminVO> adminVO = adminDAO.schoolList();
		System.out.println("schoolList ser: "+ adminVO);
		return adminVO;
	}
	
	
}

