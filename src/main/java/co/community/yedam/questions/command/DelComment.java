package co.community.yedam.questions.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.questions.service.questionsService;
import co.community.yedam.questions.service.questionsServiceImpl;
import co.community.yedam.questions.service.questionsVO;

public class DelComment implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		String viewPage = "main/questions/questionsError";
		questionsService dao = new questionsServiceImpl();
		//questionsVO vo = new questionsVO();
		
		int commentNum = Integer.parseInt(request.getParameter("commentNum"));
		int questionsId = Integer.parseInt(request.getParameter("questionsId"));
		System.out.println("게시글번호"+Integer.parseInt(request.getParameter("questionsId")));
		System.out.println("commentNum" +Integer.parseInt(request.getParameter("commentNum")));
		
		int a = dao.delComment(commentNum);
		
		if(a != 0) {
			viewPage = "questionsSelect.do";
		}else {
			request.setAttribute("message", "댓글 삭제가 실패하였습니다!");
		}
		return viewPage;
	}

}
