package co.community.yedam.questions.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.questions.service.questionsService;
import co.community.yedam.questions.service.questionsServiceImpl;
import co.community.yedam.questions.service.questionsVO;

public class ReplyInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		questionsVO vo = new questionsVO();
		questionsService dao = new questionsServiceImpl();
		String viewPage = "main/questions/questionsError";

		
		vo.setCommentBody(request.getParameter("commentBody"));
		System.out.println("commentBody는:"+request.getParameter("commentBody"));
		vo.setCommentId(request.getParameter("commentId"));
		vo.setQuestionsId(Integer.parseInt(request.getParameter("questionsId"))); 
		vo.setCommentParent(Integer.parseInt(request.getParameter("commentNum"))); // 부모 Id
		
		int commentNum = Integer.parseInt(request.getParameter("commentNum"));  
		
		// depth, order_no, group_id 우예 정할까
			// depth => 부모id의 depth 에 +1 (selectParentDepth)
				int depth = dao.selectParentDepth(commentNum)+1;
				System.out.println("depth는:"+depth);
				vo.setDepth(depth);	
			// 	group_id => 부모 id의 그룹 아이디(selectParentGroupid)
				int groupId = dao.selectParentGroupid(commentNum);
				System.out.println("groupId는:"+groupId);
				vo.setGroupId(groupId);
			// order_no => 그룹 아이디=? 몇개인지 카운트하고 거기서 +1 (countGroupId)
				int cnt = dao.countGroupId(groupId);
				System.out.println("cnt는:"+cnt);
				vo.setOrderNo(cnt+1);
		
				int result = dao.replyInsert(vo);
				// result가 1이면 성공 0이면 실패
				if(result > 0) {
					viewPage = "ajax:";
				}else {
					request.setAttribute("message", "댓글 등록이 실패하였습니다!");
				}
				return viewPage;
	}

}
