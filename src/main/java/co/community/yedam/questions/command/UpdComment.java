package co.community.yedam.questions.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.questions.service.questionsService;
import co.community.yedam.questions.service.questionsServiceImpl;
import co.community.yedam.questions.service.questionsVO;

public class UpdComment implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		questionsService dao = new questionsServiceImpl();
		questionsVO vo = new questionsVO();
		//System.out.println("내용" + request.getParameter("commentBody"));
		System.out.println("댓글번호"+Integer.parseInt(request.getParameter("commentNum")));
		System.out.println("글번호1"+Integer.parseInt(request.getParameter("questionsId")));
		vo.setCommentNum(Integer.parseInt(request.getParameter("commentNum")));
		int a = dao.updateCom(vo);
		
		if(a > 0) {
			System.out.println("댓글수정 완료");
		}else {
			System.out.println("댓글수정 실패");
		}
		return "questionsSelect.do?questionsId"+request.getParameter("questionsId");
	}

}
