package kr.ac.kopo.board.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.board.service.BoardService;
import kr.ac.kopo.board.vo.BoardVO;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	
	
	
	@RequestMapping("/board")
	public ModelAndView selectAll() {
		List<BoardVO> boardList = service.selectAllBoard();
		
		ModelAndView mav = new ModelAndView("board/list");
		mav.addObject("list", boardList);
		
		return mav;
//		System.out.println("전체게시글 조회");
	}
	
	@RequestMapping("/board/detail")
	public void selectByNo(@RequestParam("no")int no) {
		//int no = Integer.parseInt(request.getParameter("no"));
		
		System.out.println("no:" + no);
		
	}
	
	@RequestMapping("/board/{no}")
	public ModelAndView selectByNo2(@PathVariable("no") int no) {
		BoardVO board = service.selectOneBoard(no);
		ModelAndView mav = new ModelAndView("board/detail");
		mav.addObject("board", board);
		return mav;
		
	}
//	@RequestMapping(value="/board/write", method=RequestMethod.GET)
	@GetMapping("/board/write")
	public String writeForm(Model model) {
		
		//로그인상태(교슈님예시)
		/*
		 * LoginVO userVO = session.getAttribute userVO.getId() ///
		 */		
		
		//로그인여부 판단->
		
		//BoardVO board = new BoardVO();
		//board.setTitle("제목이요"); //얠 넣어준거임.
		//model.addAttribute(board);
		
		model.addAttribute("boardVO",new BoardVO()); //공유영역에 객체등록 boardvo
		
		
		return "board/write";
	}
	
	
	
//	@RequestMapping(value="/board/write", method=RequestMethod.POST)
	@PostMapping("/board/write")
//	public void write(@RequestParam("title") String title, @RequestParam("writer") String writer) {
	
	public String write(@Valid BoardVO board, Errors error) { //위와같이 쓸 수 있음. 얘가 알아서 매핑해줌. val 올바르게 입력되엇는지 체크
		System.out.println("post /board/write");
		System.out.println(board);
		
		if(error.hasErrors()) {
			System.out.println("에러발생!");
			return "board/write";
		}
		
//		System.out.println(error.hasErrors());//에러가 있는지 여부 t/f
		service.insertBoard(board);
		return "redirect:/board";
		//errors : 에러체크 항상붙어있어야함. 중간에 모 들어가면 안됨.
		//=BindingResult result -> errors 상속받은 애임.
	}
	
	
	/*
//	@RequestMapping(value="/board/write", method=RequestMethod.GET)
	@GetMapping("/board/write")
	public String writeForm() {
		return "board/write";
	}
	
//	@RequestMapping(value="/board/write", method=RequestMethod.POST)
	@PostMapping("/board/write")
//	public void write(@RequestParam("title") String title, @RequestParam("writer") String writer) {
	public void write(BoardVO board) { //위와같이 쓸 수 있음. 얘가 알아서 매핑해줌.
		System.out.println("post /board/write");
		System.out.println(board);
	}
	*/
}
