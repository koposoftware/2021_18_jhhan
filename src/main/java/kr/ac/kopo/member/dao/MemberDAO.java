package kr.ac.kopo.member.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.ac.kopo.member.vo.BankAccountVO;
import kr.ac.kopo.member.vo.BankTransVO;
import kr.ac.kopo.member.vo.MemberVO;

public interface MemberDAO {
	
	MemberVO login(MemberVO member);
	
	void createAccOne (HashMap<String, Object> map);
	
	void createAccTwo (HashMap<String, Object> map);
	 
	List<BankAccountVO> myAcc( MemberVO user);
	
	void trans(BankTransVO transVO);
	
	List<BankTransVO> transAcc(MemberVO user);
	
	List<MemberVO> rank(MemberVO user);
	
	List<BankAccountVO> classAcc( MemberVO user);
}
