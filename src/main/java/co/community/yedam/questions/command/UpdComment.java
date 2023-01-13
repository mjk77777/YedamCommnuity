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
		vo.setCommentNum(Integer.parseInt(request.getParameter("commentNum")));
		vo.setCommentBody(request.getParameter("commentBody"));
		
		 dao.updateCom(vo);
		
		
		return "ajax:";
	}

}
