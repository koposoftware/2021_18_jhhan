package kr.ac.kopo.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.board.dao.BoardDAO;
import kr.ac.kopo.board.vo.BoardVO;

@Service // 자동으로 컨테이너에서 관리. dao가 db access
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDAO boardDAO;

	public List<BoardVO> selectAllBoard() {
		List<BoardVO> boardList = boardDAO.searchAll();
		return boardList;
	}

	public BoardVO selectOneBoard(int no) {
		BoardVO board = boardDAO.searchOne(no);
		return board;
	}

	public void insertBoard(BoardVO board) {

		boardDAO.insertBoard(board);
	
	}

}
