package co.community.yedam.questions.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.questions.service.questionsService;
import co.community.yedam.questions.service.questionsServiceImpl;
import co.community.yedam.questions.service.questionsVO;

public class CommentReg implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		String viewPage = "main/questions/questionsError";
		questionsService dao = new questionsServiceImpl();
		questionsVO vo = new questionsVO();
		
		System.out.println("안녕");
		System.out.println("게시글번호"+ Integer.parseInt(request.getParameter("questionsId").trim()));
		System.out.println("작성자" + request.getParameter("commentId"));
		System.out.println("내용" + request.getParameter("commentBody"));
		
		vo.setQuestionsId(Integer.parseInt(request.getParameter("questionsId").trim()));
		vo.setCommentId(request.getParameter("commentId"));
		vo.setCommentBody(request.getParameter("commentBody"));
		
		int a = dao.commentInsert(vo);
		
		if(a >= 1 ) {
			// 댓글 등록 성공
			viewPage = "ajax:questionsSelect.do"+Integer.parseInt(request.getParameter("questionsId").trim());
		}else {
			// 댓글 등록 실패
			request.setAttribute("message", "댓글 등록이 실패하였습니다!");
		}
		return viewPage;
	}

	

}
