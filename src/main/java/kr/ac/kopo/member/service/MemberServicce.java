package kr.ac.kopo.member.service;

import java.util.List;

import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.member.vo.BankAccountVO;
import kr.ac.kopo.member.vo.BankTransVO;
import kr.ac.kopo.member.vo.MemberVO;

public interface MemberServicce {
	
	MemberVO login(MemberVO member); //throws exception
	
	List<BankAccountVO> myAccount(MemberVO user);
	
	void trans(BankTransVO transVO);
	
	List<BankTransVO> transList(MemberVO user);
	
	List<MemberVO> rank( MemberVO user);
	
	 List<BankAccountVO> classAcc ( MemberVO user);
}
