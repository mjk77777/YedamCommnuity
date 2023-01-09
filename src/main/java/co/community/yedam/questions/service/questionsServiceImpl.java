
package co.community.yedam.questions.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.community.yedam.common.DataSource;

public class questionsServiceImpl implements questionsService {
	private SqlSession sqlSession = DataSource.getSession().openSession(true);
	private questionsMapper map = sqlSession.getMapper(questionsMapper.class);

	@Override
	public List<questionsVO> questionsSelectList() {
		//
		return map.questionsSelectList();
	}

	@Override
	public questionsVO questionsSelect(questionsVO vo) {
		// TODO Auto-generated method stub
		return map.questionsSelect(vo);
	}

	@Override
	public int questionsInsert(questionsVO vo) {
		// TODO Auto-generated method stub
		return map.questionsInsert(vo);
	}

	@Override
	public int questionsUpdate(questionsVO vo) {
		// TODO Auto-generated method stub
		return map.questionsUpdate(vo);

	}

	@Override
	public int questionsDelete(questionsVO vo) {
		// TODO Auto-generated method stub
		return map.questionsDelete(vo);
	}

	@Override
	public List<questionsVO> questionsSearchList(String key, String val) {
		return map.questionsSearchList(key, val);
	}

	@Override
	public int commentInsert(questionsVO vo) {
		return map.commentInsert(vo);
	}

	/*
	 * @Override public List<questionsVO> commentList(int questionsId) {
	 * map.commentList(questionsId); }
	 */
	 

	@Override
	public int delComment(int commentNum) {
		// TODO Auto-generated method stub
		return map.delComment(commentNum);
	}

	
	 @Override public List<questionsVO> commentList(questionsVO vo) { // TODO
	  return map.commentList(vo);
	  }

	 // 조회수 증가
	@Override
	public int updateHit(questionsVO vo) {
		return map.updateHit(vo);
	}
	
	// 댓글수정
	@Override
	public int updateCom(questionsVO vo) {
		return map.updateCom(vo);
	}
	 

}
