package kr.ac.kopo;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ac.kopo.board.vo.BoardVO;
import kr.ac.kopo.member.vo.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class) // spring 기반 test를 해보는 것. 객체를 가져와야함. spring-mvc 읽어야함
@ContextConfiguration(locations = { "classpath:config/spring/spring-mvc.xml" }) // 서버를 실행하고 있진 않지만 이객체를 사용ㅇ해서 테스트함
public class MyBatisTest {

	@Autowired
	private DataSource dataSource; // 여기서 주입이 안되면 null이 뜨게됨.

	@Autowired
	private SqlSessionFactory sqlFactory;

	@Autowired
	private SqlSessionTemplate sessionTemplate;

	@Ignore
	@Test
	public void DataSource생성테스트() throws Exception {
		System.out.println("datasource: "+ dataSource);//메인도 없이 실행됨. 이 메소드만 잘 동작하는지를 보고 싶은것.
		assertNotNull(dataSource); // dataSource 객체값이 null이 아니면 성공한 것.
	}

//	@Ignore
	@Test
	public void mybatis연동테스트() throws Exception {
//		assertNotNull(sqlFactory);
		assertNotNull(sessionTemplate);
		System.out.println(sessionTemplate);

	}

	@Ignore
	@Test
	public void 전체게시글조회test() throws Exception {

		List<BoardVO> list = sessionTemplate.selectList("board.BoardDAO.selectAll");
		for(BoardVO board:list) {
			System.out.println();
		}
		
	}
	@Ignore
	@Test
	public void 상세게시글조회test() throws Exception{
		BoardVO board = sessionTemplate.selectOne("board.BoardDAO.selectByNo",23);
		System.out.println(board);
		
	}
	@Ignore
	@Test
	public void 로그인테스트() throws Exception{
		MemberVO member = new MemberVO();
		member.setId("user");
		member.setPassword("user");
		
		MemberVO userVO = sessionTemplate.selectOne("member.MemberDAO.login", member);
		assertNotNull(userVO);
	}
}