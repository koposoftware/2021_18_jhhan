package kr.ac.kopo.mbti.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.mbti.dao.MbtiDAO;
import kr.ac.kopo.mbti.vo.MbtiVO;
import kr.ac.kopo.member.vo.MemberVO;


@Service
public class MbtiServiceImpl implements MbtiService {

	@Autowired
	private MbtiDAO mbtiDAO;
	
	public void quiz(MbtiVO mbti ,@SessionAttribute("userVO") MemberVO user) {
		HashMap<String, Object> map = new HashMap<String,Object>();
		map.put("mbtiVO", mbti);
		map.put("memberVO", user);
		
		System.out.println("mbti map:"+ map);
		
		mbtiDAO.insertResult(map);
		
	}
}
