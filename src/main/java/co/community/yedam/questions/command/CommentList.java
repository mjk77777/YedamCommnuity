package co.community.yedam.questions.command;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.questions.service.questionsService;
import co.community.yedam.questions.service.questionsServiceImpl;
import co.community.yedam.questions.service.questionsVO;

public class CommentList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		questionsService dao = new questionsServiceImpl();
		questionsVO vo = new questionsVO();
		
		vo.setQuestionsId(Integer.parseInt(request.getParameter("questionsId")));
		//db로부터 댓글목록 받아옴
		List<questionsVO> list = dao.commentList(vo);
		
		//구해온 댓글목록을 반복문을 통하여 json 형식으로 문자열 변수(json)에 누적저장
		String json = "{\"replyList\":[";
		// replyList는 키값이 됨
		for(int i =0; i<list.size(); i++) {
			String commentId = list.get(i).getCommentId();
			String commentBody = list.get(i).getCommentBody();
			Date commentDate = list.get(i).getCommentDate();
			SimpleDateFormat df = new SimpleDateFormat("YY-MM-dd");
			int commentNum = list.get(i).getCommentNum();
			
			
			json += "[{\"commentNum\":\"" +commentNum +"\"},";
			json += "{\"commentId\":\"" + commentId +"\"},";
			json += "{\"commentDate\":\"" + df.format(commentDate) + "\"},";
			json += "{\"commentBody\":\""+commentBody + "\"},";
			json += "{\"commentNum\":\""+commentNum + "\"}]";
			
			if(i != list.size() - 1) {
				json += ",";
			}
		}
			json += "]}";

			
		if(list != null) {
			//request.setAttribute("list", list);
		}
		System.out.println("json"+json);
		return "ajax:"+json;
	}

}
