package co.community.yedam.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.community.yedam.common.Command;
import co.community.yedam.member.service.MemberService;
import co.community.yedam.member.service.MemberServiceImpl;

public class AjaxMemberIdCheck implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// ajax로 멤버 아이디 중복 확인하는 부분
		// 리턴값이 true이면 사용가능한 아이디
		MemberService dao = new MemberServiceImpl();
		
		String memberId = request.getParameter("memberId");
		
		boolean result = dao.isIdCheck(memberId); // 검색 결과 얻기 1 => 중복(사용불가) 0=>사용가능
		String str = "ajax:0"; // 페이지에 돌려줄 값을 담을 변수

		/*
		 * vo의 null여부에 따라서 다른 값을 부여해서 들고 내려가고 싶은데 어디에 담아서 내려가야할지 모르겠다. => 교수님: return으로
		 * 해서 식별 문자열을 돌려주고, ajax에 대한 view Resolver를 FC에 따로 만들어줘야한다 이말이야
		 */
		if (result) { 
			str = "ajax:"+1;
		}

		return str;
	}

}
