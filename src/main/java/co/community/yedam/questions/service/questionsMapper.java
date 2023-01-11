package co.community.yedam.questions.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface questionsMapper {
	// service랑 같게 하되 넘기는 값에 따라 달라짐
	
	List<questionsVO> questionsSelectList();
	questionsVO questionsSelect(questionsVO vo);
	int questionsInsert(questionsVO vo);
	int questionsUpdate(questionsVO vo);
	int questionsDelete(questionsVO vo);
	int updateHit(questionsVO vo); // 조회수 증가
	int likeUpdate(questionsVO vo); // 좋아요수 업데이트(추가)
	int delLike(questionsVO vo); //좋아요 취소(제거)
	String getLikeCount(int questionsId); // 좋아요수 가져오기
	int chkLike(questionsVO vo); //좋아요 이전 이력 검색
	
	
	List<questionsVO> commentList(questionsVO vo); // 댓글 조회
	int commentInsert(questionsVO vo); //댓글 등록
	int updateCom(questionsVO vo); // 댓글수정
	int delComment(int commentNum); // 댓글 삭제
	
	
	List<questionsVO> questionsSearchList(@Param("key") String key, @Param("val") String val);  //게시글 검색
	
	
	
	
	// 매개변수가 2개일때는 각각 앞에 @Param을 붙여줘야함.
	// List<SampleVO> SampleSearchList(@Param("key") String key, @Param("val") String val);
	
}
