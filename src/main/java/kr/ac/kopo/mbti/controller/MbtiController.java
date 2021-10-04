package kr.ac.kopo.mbti.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.ac.kopo.mbti.service.MbtiServiceImpl;
import kr.ac.kopo.mbti.vo.MbtiVO;
import kr.ac.kopo.member.vo.MemberVO;

@SessionAttributes({"userVO"})
@Controller
public class MbtiController {
	
	
	@Autowired
	private MbtiServiceImpl service;
	
	
	@GetMapping("member/mbti")
	public String doMbti() {
		System.out.println("mbti page");
		return "member/mbti";
	}
	
	@ResponseBody
	@GetMapping("member/quizResult")
	public String result(MbtiVO mbti,  @SessionAttribute("userVO") MemberVO user){
		System.out.println("result form ajax:"+mbti);
		System.out.println("username:"+user);
		service.quiz(mbti, user);
		
		return "member/quizResult";
		
	}
	
	
	

}
