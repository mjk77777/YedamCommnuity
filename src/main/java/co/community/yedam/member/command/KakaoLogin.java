package co.community.yedam.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.community.yedam.common.Command;
import co.community.yedam.member.service.MemberService;
import co.community.yedam.member.service.MemberServiceImpl;
import co.community.yedam.member.service.MemberVO;

public class KakaoLogin implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(); // 세션을 불러온다.
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		
		session.setAttribute("memberId", request.getParameter("kakaoname"));
		session.setAttribute("memberAuthor", "USER");
		
		
		return "main/main/main";
	}

}
