package co.community.yedam.questions.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.questions.service.questionsService;
import co.community.yedam.questions.service.questionsServiceImpl;
import co.community.yedam.questions.service.questionsVO;

public class LikeUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		questionsService dao = new questionsServiceImpl();
		questionsVO vo = new questionsVO();
		System.out.println("안녕하세요");
		System.out.println("게시글번호" + Integer.parseInt(request.getParameter("questionsId")));
		System.out.println("memberid" +request.getParameter("memberId") );
		
		vo.setQuestionsId(Integer.parseInt(request.getParameter("questionsId")));
		vo.setMemberId(request.getParameter("memberId"));
		
		
		
		// 그 전에 '좋아요'한 이력 있는지 검색
		int chk = dao.chkLike(vo);
		System.out.println("이력있나?"+chk);
		
		if(chk == 0 ) {
			// 좋아요 안 함 => 좋아요 추가
			dao.likeUpdate(vo);
		}else {
			// 좋아요 함 => 업데이트 안해도 돼
			System.out.println("업데이트 안해");
			return "main/questions/questionsSelect";
		}
		return null;
	}
}
