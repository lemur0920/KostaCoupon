package kosta.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kosta.model.Board;
import kosta.model.BoardService;

public class UpdateAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = new ActionForward();
		BoardService service = BoardService.getInstance();
		
		Board board = new Board();
		board.setSeq(Integer.parseInt(request.getParameter("seq")));
		board.setTitle(request.getParameter("title"));
		board.setContents(request.getParameter("contents"));
		
		service.UpdateBoardService(board);
		
		forward.setRedirct(true);
		forward.setPath("listAction.do");
		return null;
	}

}
