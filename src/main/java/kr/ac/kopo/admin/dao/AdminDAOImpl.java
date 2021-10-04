package kr.ac.kopo.admin.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.admin.vo.AdminVO;
import kr.ac.kopo.admin.vo.InfoVO;
import kr.ac.kopo.stock.vo.StockMainVO;


@Repository
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	private SqlSessionTemplate sqlsessionTemplate;
	
	//로그인
	public AdminVO login(AdminVO admin) {
		
		AdminVO adminVO = sqlsessionTemplate.selectOne("admin.AdminDAO.Adlogin",admin);
		return adminVO;
	}
	
	//회원정보출력
	public List<InfoVO> membinfo() {
		List<InfoVO>  info = sqlsessionTemplate.selectList("admin.AdminDAO.infoList" );
		System.out.println("info DAO: "+ info);
		return info;
	
	}
	
	//총회원수뽑기
	public AdminVO countMember() {
		AdminVO count = sqlsessionTemplate.selectOne("admin.AdminDAO.mainOne");
		System.out.println("총회원수: "+ count);
		return count;
	}
	//총학교수
	public AdminVO countSchool() {
		AdminVO count = sqlsessionTemplate.selectOne("admin.AdminDAO.mainTwo");
		System.out.println("총학교수: "+ count);
		return count;
	}
	//은행계좌참여개수
	public AdminVO bankCount() {
		AdminVO bank = sqlsessionTemplate.selectOne("admin.AdminDAO.mainFour");
		System.out.println("은행계좌수: "+ bank);
		return bank;
	}
	//주식계좌수
	public AdminVO stockCount() {
		AdminVO stock = sqlsessionTemplate.selectOne("admin.AdminDAO.mainFive");
		System.out.println("주식 수: "+ stock);
		return stock;
	}
	
	
	//mbti 참여횟수
	public AdminVO countMbti() {
		AdminVO count = sqlsessionTemplate.selectOne("admin.AdminDAO.mainThree");
		System.out.println("mbti: "+ count);
		return count;
	}
	
	//리포트 회원조회하여 작성
	public List<InfoVO> getInfo(InfoVO info){
		
		List<InfoVO> getInfo = sqlsessionTemplate.selectList("admin.AdminDAO.report", info);
		return getInfo;
	}
	
	public List<AdminVO> schoolList() {
		List<AdminVO> avo = sqlsessionTemplate.selectList("admin.AdminDAO.schoolList");
		System.out.println("schoolList: "+ avo);
		return avo;
	}
	
}
