package co.community.yedam.questions.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;


public interface questionsService {
	
	// 기본적으로 CRUD 5가지 기능(Read는 전체와 한 건) - 불필요한 것은 빼도 상관 없음.
	
	List<questionsVO> questionsSelectList(int str);
	List<questionsVO> questionsSelectListAdmin(); // 관리자 입장에서 모든 문의 게시물 조회
	questionsVO questionsSelect(questionsVO vo);
	int questionsInsert(questionsVO vo);
	int questionsUpdate(questionsVO vo);
	int questionsDelete(questionsVO vo);
	int countQuestions(); // 게시물 총 개수 구하기

	int updateHit(questionsVO vo); // 조회수 증가
	List<questionsVO> likeList();
	int likeUpdate(questionsVO vo); // 좋아요수 업데이트(추가)
	int delLike(questionsVO vo); //좋아요 취소(제거)
	String getLikeCount(int questionsId); // 좋아요수 가져오기
	int chkLike(questionsVO vo); //좋아요 이전 이력 검색
	
	
	List<questionsVO> commentList(questionsVO vo); // 댓글 조회
	int commentInsert(questionsVO vo); //댓글 등록
	int updateCom(questionsVO vo); // 댓글수정
	int delComment(int commentNum); // 댓글 삭제
	int replyInsert(questionsVO vo); // 대댓글 등록 
	int selectParentDepth(int commentNum); //부모id의 depth 구하기
	int selectParentGroupid(int commentNum); // 부모id의 groupId 구하기
	int countGroupId(int groupId);
	
	List<questionsVO> questionsSearchList(@Param("key") String key, @Param("val") String val);  //게시글 검색
	
	
}
