package co.community.yedam.questions.service;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;

@Getter

@Setter

public class questionsVO {
	
	private int questionsId;
	private String questionsTitle;
	private String questionsContent;
	@JsonFormat(pattern = "yyyy-MM-dd ",locale = "Asia/Seoul")
	private Date questionsDate;
	private String memberId; //외래키
	private int hit; // 조회수 
	
	private int commentNum; // 댓글번호
	private String commentId; // 댓글작성자
	@JsonFormat(pattern = "yyyy-MM-dd HH24:MI:SS",locale = "Asia/Seoul")
	private Date commentDate;// 댓글 작성
	private int commentParent; // 부모글
	private String commentBody; // 댓글 내용
	private int depth;
	private int orderNo;
	private int groupId;
	
	
	
	
}
