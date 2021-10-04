package kr.ac.kopo.board.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.board.vo.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public List<BoardVO> searchAll() {

		List<BoardVO> list = sqlSessionTemplate.selectList("board.BoardDAO.selectAll");
		return list;
	}

	/**
	 * 게시판 상세조회
	 * 
	 */
	public BoardVO searchOne(int no) {
		BoardVO vo = sqlSessionTemplate.selectOne("board.BoardDAO.selectByNo", no);
		return vo;
	}

	/**
	 * 게시판 등록
	 * 
	 * @param board
	 * @return
	 */
	public void insertBoard(BoardVO board) {

		sqlSessionTemplate.insert("board.BoardDAO.write", board);
	}

}
