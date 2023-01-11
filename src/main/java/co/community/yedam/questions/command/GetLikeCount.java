package co.community.yedam.questions.command;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.questions.service.questionsService;
import co.community.yedam.questions.service.questionsServiceImpl;

public class GetLikeCount implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		questionsService dao = new questionsServiceImpl();
		int questionsId = Integer.parseInt(request.getParameter("questionsId"));
		
		// 게시글 총 추천수 구함
		String result = dao.getLikeCount(questionsId);
		
		System.out.println("총추천수" + result);
		return "ajax:"+dao.getLikeCount(questionsId);
	}
}
