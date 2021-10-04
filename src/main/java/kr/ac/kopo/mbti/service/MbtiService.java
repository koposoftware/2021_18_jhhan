package kr.ac.kopo.mbti.service;

import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.mbti.vo.MbtiVO;
import kr.ac.kopo.member.vo.MemberVO;

public interface MbtiService {

	void quiz(MbtiVO mbti, MemberVO user);
}
