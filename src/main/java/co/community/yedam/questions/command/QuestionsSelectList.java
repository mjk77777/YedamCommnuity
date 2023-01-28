package co.community.yedam.questions.command;



import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.questions.service.questionsService;
import co.community.yedam.questions.service.questionsServiceImpl;
import co.community.yedam.questions.service.questionsVO;

public class QuestionsSelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		questionsService dao = new questionsServiceImpl();
		List<questionsVO> list = new ArrayList<questionsVO>();
		
		/* 페이지 처리 */
		String tempPage = request.getParameter("page"); // 현재 페이지
		int cPage;
		if(tempPage == null || tempPage.length() == 0 ) {
			cPage = 1;
		}
		// 파라미터가 없는 경우나 숫자가 아닌 문자가 들어온 경우 대비해서 예외처리
		try {
			cPage = Integer.parseInt(tempPage);
		}catch(NumberFormatException e) {
			cPage = 1;
		}
		
		int cnt = dao.countQuestions(); // 총 개시물 개수
		//총 페이지 수 = 총 게시물 수 / 한 페이지 당 개시글 수
		int totalPages;
		if(cnt % 3 == 0) {
			 totalPages = cnt / 3;
		}else {
			 totalPages = (cnt / 3) + 1;
		}
		if(cnt == 0) {
			totalPages = 1;
		}
		// 시작페이지(블럭 내에서) strPage , endPage
		int pagelength = 3;
		int currentBlock = cPage % pagelength == 0 ? cPage / pagelength : cPage / pagelength + 1;
		int strPage = 1+(currentBlock-1)*pagelength;
		int endPage = strPage+pagelength-1;
	
		if(totalPages < endPage) { endPage = totalPages; }
		 
		
		request.setAttribute("totalPages", totalPages);
		request.setAttribute("strPage", strPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("cPage", cPage);


		
		int str = 1 + (cPage - 1) * 3;
		System.out.println("str는:"+str);
		list = dao.questionsSelectList(str);
		request.setAttribute("list", list);
		System.out.println("list는"+list);
		System.out.println("cPage:"+cPage);
		
		
		return "main/questions/questionsSelectList";
	}

}
