package co.community.yedam.questions.command;



import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.questions.service.questionsService;
import co.community.yedam.questions.service.questionsServiceImpl;
import co.community.yedam.questions.service.questionsVO;

public class QuestionsSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		questionsService dao = new questionsServiceImpl();
		questionsVO vo = new questionsVO();
		vo.setQuestionsId(Integer.valueOf(request.getParameter("questionsId")));
		//vo.setHit(Integer.parseInt(request.getParameter("hit")));
		
		System.out.println("글번호"+request.getParameter("questionsId"));
		
		dao.updateHit(vo);
		vo = dao.questionsSelect(vo);

		
		List<questionsVO> list = new ArrayList<questionsVO>();
		list = dao.commentList(vo);
		 
		 
		if(vo != null ) {
			request.setAttribute("vo", vo);
			request.setAttribute("list",list);
		}
		return "main/questions/questionsSelect";
	}

}
