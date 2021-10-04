package kr.ac.kopo.member.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.member.dao.MemberDAO;
import kr.ac.kopo.member.vo.BankAccountVO;
import kr.ac.kopo.member.vo.BankTransVO;
import kr.ac.kopo.member.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberServicce {
	
	@Autowired
	private MemberDAO memberDAO; //의존성 자동주입
	
	public MemberVO login(MemberVO member) {
		
		MemberVO userVO = memberDAO.login(member);
		return userVO;
	}
	
	public void newAccOne (BankAccountVO bank, @SessionAttribute("userVO") MemberVO user) {
		
		HashMap<String, Object> map = new HashMap<String,Object>();
		map.put("memberVO", user);
		map.put("bankVO", bank);

		System.out.println("map:"+map);
		
		memberDAO.createAccOne(map);
		
	}
	public void newAccTwo (BankAccountVO bank, @SessionAttribute("userVO") MemberVO user) {
		
		HashMap<String, Object> map = new HashMap<String,Object>();
		map.put("memberVO", user);
		map.put("bankVO", bank);
		
		System.out.println("map:"+map);
		
		memberDAO.createAccTwo(map);
		
	}
	
	public List<BankAccountVO> myAccount(@SessionAttribute("userVO") MemberVO user){
		
		System.out.println("계좌 아이디 전달:"+ user);
		String id = user.getId();
		System.out.println("id: "+ id);
		
		List<BankAccountVO> bankVO = memberDAO.myAcc(user);
		return bankVO;
		}
	
	//같은반 친구들 계좌목록불러오기: 이체페이지
	public  List<BankAccountVO> classAcc (@SessionAttribute("userVO") MemberVO user){
		
		 List<BankAccountVO> transList = memberDAO.classAcc(user);
		System.out.println("classAcc ser:"+ transList);
		return transList;
	}
	
	//이체 프로시저 insert
	public void trans(BankTransVO transVO) {
		
		BankTransVO trans = new BankTransVO();
		trans.setBank_id(transVO.getBank_id());
		trans.setTrans_money(transVO.getTrans_money());
		trans.setYour_bank_id(transVO.getYour_bank_id());
		
		System.out.println("trans:" +trans);
		memberDAO.trans(trans);
		
	}
	
	//이체내역조회
	public List<BankTransVO> transList(@SessionAttribute("userVO") MemberVO user){
		System.out.println("계좌 아이디 전달:"+ user);
		String id = user.getId();
		System.out.println("id: "+ id);
		
		List<BankTransVO> transVO = memberDAO.transAcc(user);
		return transVO;
	}
	
	
	/////
	//ranking
	public List<MemberVO> rank(@SessionAttribute("userVO") MemberVO user){
		
		 List<MemberVO> ranking = memberDAO.rank(user);
		 System.out.println("service ranking: "+ ranking);
		 return ranking;
	}

}
