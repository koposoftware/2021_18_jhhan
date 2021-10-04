package kr.ac.kopo;

import java.util.HashMap;
import java.util.List;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ac.kopo.admin.dao.AdminDAO;
import kr.ac.kopo.admin.vo.AdminVO;
import kr.ac.kopo.admin.vo.InfoVO;
import kr.ac.kopo.mbti.dao.MbtiDAOImpl;
import kr.ac.kopo.mbti.vo.MbtiVO;
import kr.ac.kopo.member.dao.MemberDAO;
import kr.ac.kopo.member.service.MemberServiceImpl;
import kr.ac.kopo.member.vo.BankAccountVO;
import kr.ac.kopo.member.vo.BankTransVO;
import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.stock.dao.StockMainDAO;
import kr.ac.kopo.stock.vo.StockMainVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/spring/spring-mvc.xml" })
public class MemberDaoTest {

	@Autowired
	private MemberDAO memberDAO;

	@Autowired
	private SqlSessionTemplate sessionTemplate;

	@Autowired
	private MemberServiceImpl service;

	@Autowired
	private MbtiDAOImpl mbtiDAO;

	@Autowired
	private AdminDAO adminDAO; // 의존성 자동주입

	@Ignore
	@Test
	public void 전체게시글조회test() throws Exception {
		MemberVO user = new MemberVO();
		user.setId("student");
		List<BankAccountVO> list = sessionTemplate.selectList("member.MemberDAO.myAccounts", user);
		for (BankAccountVO bank : list) {
			System.out.println();
		}

	}

	@Ignore
	@Test
	public void 이체프로시저test() throws Exception {
		BankTransVO trans = new BankTransVO();
		trans.setBank_id("11114309628");
		trans.setTrans_money(10000);
		trans.setYour_bank_id("11122797153");

		System.out.println("trans:" + trans);
		memberDAO.trans(trans);

	}

	@Ignore
	@Test
	public void 이체프로시저DAOtest() throws Exception {
		BankTransVO trans = new BankTransVO();
		trans.setBank_id("11114309628");
		trans.setTrans_money(10000);
		trans.setYour_bank_id("11122797153");

		System.out.println("trans:" + trans);
		sessionTemplate.insert("member.MemberDAO.myAccounts", trans);

	}


	@Ignore
	@Test
	public void 계좌내역조회() throws Exception {
		MemberVO user = new MemberVO();
		user.setId("user");

		List<BankTransVO> list = sessionTemplate.selectList("member.MemberDAO.transList", user);
		for (BankTransVO bank : list) {
			System.out.println();
		}
	}

	@Ignore
	@Test
	public void mbti결과저장() throws Exception {
		MbtiVO mbti = new MbtiVO();
		mbti.setScore(5);
		MemberVO mem = new MemberVO();
		mem.setId("user");

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mbtiVO", mbti);
		map.put("memberVO", mem);

		mbtiDAO.insertResult(map);
	}

	@Ignore
	@Test
	public void adminInfo() throws Exception {
		List<InfoVO> infolist = sessionTemplate.selectList("admin.AdminDAO.infoList");
		for (InfoVO info : infolist) {
			System.out.println(infolist);
		}

	}

	@Ignore
	@Test
	public void countMember() throws Exception {
		AdminVO count = sessionTemplate.selectOne("admin.AdminDAO.mainThree");
		System.out.println("총회원수:" + count.getCountMbti());
	}

	@Ignore
	@Test
	public void 개인정보출력() throws Exception {
		InfoVO list = new InfoVO();
		list.setSchool("백신중");
		list.setStu_id("10102");

		List<InfoVO> infolist = adminDAO.getInfo(list);
		System.out.println("infolist" + infolist);

	}
	@Ignore
	@Test
	public void 학교목록조회() throws Exception {

		List<AdminVO> avo = sessionTemplate.selectList("admin.AdminDAO.schoolList");
		System.out.println(avo);

	}
	
	@Ignore
	@Test
	public void 랭킹조회() throws Exception {
		MemberVO user = new MemberVO();
		user.setId("s10101");
		user.setSchool("백신중");
		List<MemberVO> ranking = memberDAO.rank(user);
		System.out.println(ranking);
		System.out.println(ranking);

	}
	
	
	@Ignore
	@Test
	public void 같은반계좌번호이체() throws Exception {
		MemberVO user = new MemberVO();
		user.setId("s20101");
		user.setSchool("백신중");
		 List<BankAccountVO> transList = memberDAO.classAcc(user);
		System.out.println(transList);
//		List<BankAccountVO> list = sessionTemplate.selectList("member.MemberDAO.classAcc", user);
//		for (BankAccountVO bank : list) {
//			System.out.println("list"+ list);
//		}
		
	}
	@Test
	public void report() {
		
		InfoVO info = new InfoVO();
		info.setSchool("백신중");
		info.setStu_id("20101");
		List<InfoVO> getInfo = sessionTemplate.selectList("admin.AdminDAO.report", info);
		System.out.println(getInfo);
	}
	
	
}
