package kr.ac.kopo.member.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.member.vo.BankAccountVO;
import kr.ac.kopo.member.vo.BankTransVO;
import kr.ac.kopo.member.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	private SqlSessionTemplate sqlsessionTemplate;
	
	public MemberVO login(MemberVO member) {
		
		MemberVO userVO = sqlsessionTemplate.selectOne("member.MemberDAO.login",member);
		return userVO;
	}
	
	//계좌개설 정보 입력
	public void createAccOne (HashMap<String, Object> map) {
		
		sqlsessionTemplate.insert("member.MemberDAO.account", map);
		System.out.println("member acc: " + map);
		
	}
	public void createAccTwo (HashMap<String, Object> map) {
		
		sqlsessionTemplate.update("member.MemberDAO.accountTwo", map);
		System.out.println("member acc: " + map);
		
	}
	
	//생성한 계좌 정보 가져오기
	public List<BankAccountVO> myAcc(@Param("id") MemberVO user){
		String id = user.getId();
		System.out.println("*****dao id"+ id);
		
		List<BankAccountVO> bankVO = sqlsessionTemplate.selectList("member.MemberDAO.myAccounts",id);
		System.out.println("myACC: "+ bankVO);
		return bankVO;
	
	}
	//같은반사람들 계좌가져오기(이름,학교)
	public List<BankAccountVO> classAcc( MemberVO user){
		List<BankAccountVO> cacc = sqlsessionTemplate.selectList("member.MemberDAO.classAcc",user);
		System.out.println("classAcc dao: "+ cacc);
		return cacc;
	}
	
	
	//이체 -프로시저 입력
	public void trans (BankTransVO transVO) {
		sqlsessionTemplate.insert("member.MemberDAO.transMoney",transVO);
		System.out.println("transVO:" +transVO);
		
	}
	
	//이체내역
	public List<BankTransVO> transAcc(@Param("id") MemberVO user){
		String id = user.getId();
		System.out.println("*****dao id"+ id);
		
		List<BankTransVO> transVO = sqlsessionTemplate.selectList("member.MemberDAO.transList",id);
		System.out.println("transList: "+ transVO);
		return transVO;
	}
	
	//랭킹 조회
	public List<MemberVO> rank(MemberVO user) {
		List<MemberVO> rank = sqlsessionTemplate.selectList("member.MemberDAO.rank", user);
		System.out.println("랭킹목록 DAO: "+ rank);
		return rank;
	}
	
	
	

}
