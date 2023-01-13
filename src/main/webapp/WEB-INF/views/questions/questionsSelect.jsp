<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jquery -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- w3schools -->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.none{
	border:none;
}
.animate-like {
	animation-name: likeAnimation;
	animation-iteration-count: 1;
	animation-fill-mode: forwards;
	animation-duration: 0.65s;
}

@
keyframes likeAnimation { 0% {
	transform: scale(30);
}

<
br
>
100


%
{
transform


:


scale
(


1


)
;


}
}
html {
	font-family: "Noto Sans KR", sans-serif;
}

/* 노말라이즈 */
body, ul, li, h1, h2, h3, h4, h5, h6 {
	margin: 0;
	padding: 0;
	list-style: none;
}

<
div
>
<
table
 
border
="
1
"
>
<
tr
>
<
th
>
제목
</
th
>
<
td
 
colspan
="
5
"
 
readonly
="
readonly
"
>
${
vo
.questionsTitle
 
}
</
td
>
</
tr
>
<
tr
>
<
th
 
width
="
100
"
>
작성자
</
th
>
<
td
 
width
="
100
"
>
${
vo
.memberId
 
}
</
td
>
<
th
 
width
="
100
"
>
작성일자
</
th
>
<
td
 
width
="
100
"
>
${
vo
.questionsDate
 
}
</
td>a:link {
	color: lightblue;
}

/* 라이브러리 */
.con {
	margin: 0 auto;
}

.img-box>img {
	width: 100%;
	display: block;
}

.row::after {
	content: "";
	display: block;
	clear: both;
}

.cell {
	float: left;
	box-sizing: border-box;
}

.cell-right {
	float: right;
	box-sizing: border-box;
}

.margin-0-auto {
	margin: 0 auto;
}

.block {
	display: block;
}

.inline-block {
	display: inline-block;
}

.text-align-center {
	text-align: center;
}

.line-height-0-ch-only {
	line-height: 0;
}

.line-height-0-ch-only>* {
	line-height: normal;
}

.relative {
	position: relative;
}

.absolute-left {
	position: absolute;
	left: 0;
}

.absolute-right {
	position: absolute;
	right: 0;
}

.absolute-middle {
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
}

/* 커스텀 */
/* 반응형 레이아웃 */
.con {
	max-width: 950px;
}

.con-min-width {
	min-width: 320px;
}

.top-menu a {
	text-decoration: none;
	color: gray;
	font-weight: bold;
	font-size: 1.2rem;
}

html, body {
	overflow-x: hidden;
}

.table-common>table {
	width: 100%;
	border-collapse: collapse;
}

.table-common .btn-box {
	text-align: center;
}

.table-common>table th, .table-common>table td {
	border: 1px solid black;
	padding: 10px;
}

.article-list table {
	border: none;
	border-top: 2px solid lightgray;
	border-bottom: 2px solid lightgray;
}

.article-list>table th, .article-list>table td {
	border: none;
}

.article-list>table td {
	border-bottom: 1px solid lightgray;
}

.article-list>table thead {
	border-bottom: 2px solid lightgray;
	background-color: #F5F5F5;
}

.article-detail {
	border: 2px solid lightgray;
}

.article-detail>table {
	border: none;
	width: calc(100% - 100px);
}

.article-detail>table th, .article-detail>table td {
	border: none;
}

.article-detail>table tr:not(:last-child) {
	border-bottom: 1px solid lightgray;
}

.article-detail>table tr:not(.article-body), .article-detail>table tr:not(.article-body)>td
	{
	height: 20px;
	font-size: 0.9rem;
}

.article-detail>table tr.article-title>td {
	height: 40px;
	font-weight: bold;
	font-size: 1.1rem;
}

.article-detail>table td:last-child {
	padding-right: 100px;
}

.article-detail>.article-writer {
	width: 100px;
	height: 102px;
	background-color: lightgray;
	border-bottom: 1px solid lightgray;
	text-align: center;
}

.article-detail>.article-writer .writer-icon {
	margin: 0 auto;
	background-color: white;
	width: 80px;
	height: 80px;
	border-radius: 50%;
}

.reply {
	margin-top: 20px;
	border: 2px solid lightgray;
	padding: 15px;
	box-sizing: border-box;
}

.reply-form {
	padding: 10px;
}

.reply-form>form input[type="text"] {
	width: 200px;
}

.reply-form>form textarea {
	width: calc(100% - 100px);
	min-height: 40px;
}

.reply-form>form input[type="submit"] {
	width: 80px;
	height: 40px;
	transform: translatey(-40%);
}

.reply-form>form>div:not(:last-child) {
	margin-bottom: 5px;
}

.reply-list>table {
	border: none;
}

.reply-list>table th {
	display: none;
}

.reply-list>table td {
	border: none;
}



.reply-list>table td:first-child {
	font-weight: bold;
}

.reply-list>table td:first-child::after {
	font-weight: bold;
}

section.heading-page {
	background-image: url(headercss/images/qna.jpg);
	background-position: center center;
	background-repeat: no-repeat;
	background-size: cover;
	padding-top: 230px;
	padding-bottom: 110px;
	text-align: center;
}
</style>


</head>
<body>
	<section class="heading-page header-text" id="top">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="display-4" style="font-weight: lighter; color: white">문의사항
						상세</h1>
				</div>
			</div>
		</div>
	</section>
	<div align="center">
		<br> <br>
		<section class="article-detail table-common con row">
			<div class="article-writer cell">
				<div class="writer-icon"></div>
			</div>
			<table class="cell" border="1">
				<colgroup>
					<col width="100px">
				</colgroup>
				<tbody>
					<tr class="article-title">
						<th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;글번호</th>
						<td>${vo.questionsId }</td>
						<th>제목</th>
						<td colspan="3">${vo.questionsTitle }</td>
						<th>작성일</th>
						<td>${vo.questionsDate}</td>
						<th>작성자</th>
						<td>${vo.memberId}</td>
						<th>조회수</th>
						<td>${vo.hit }</td> 
					</tr>

					<tr class="article-body">
						<td colspan="10" height="500px;">${vo.questionsContent }</td>
					</tr>
				</tbody>
			</table>
		</section>
			<!-- 추천기능 -->
			<div align="center">
				<div >
					<c:if test="${memberId == null }">
						추천기능은 <button type="button" onclick="location.href='memberLoginForm.do'"><b class="w3-text-blue">로그인</b></button> 후 사용가능합니다.<br>
						<i class="fa fa-heart" style="font-size:16px; color:red;"></i>
						<span class="like_count"></span>
					</c:if>
					
					<c:if test="${memberId != null }">
						<button class="w3-button w3-white w3-round" id="like_update">
							<i class="fa fa-heart" style="font-size:16px; color:red;"></i>
							<span class="like_count"></span>
						</button>
					</c:if>
				</div>
			</div>
		<br>
		<div align="center">
			<c:if test="${vo.memberId eq memberId}">
				<button type="button" onclick="subCall('E')"
					class="btn btn-outline-dark">수정</button>
					&nbsp;&nbsp;
					<button type="button" onclick="subCall('D')"
					class="btn btn-outline-dark">삭제</button>
			</c:if>
			&nbsp;&nbsp;
			<button type="button"
				onclick="location.href='questionsSelectList.do'"
				class="btn btn-outline-dark">목록</button>
		</div>
		<br>
		<div class="con reply">
			<h1 class="">댓글 입력</h1>
			<section class="reply-form">
				<c:if test="${memberId != null }">
					<form>
						<input type="hidden" name="questionsId" id="questionsId" value="${vo.questionsId }">
						<input type="hidden" name="commentId" id="commentId" value="${memberId }">
							<div align="center">
								<textarea placeholder="내용을 입력하세요." id="commentBody" name="commentBody"></textarea>
								<input type="button" id="commReg" class="btn btn-dark" value="댓글등록">
							</div>
					</form>	
				</c:if>
				<c:if test="${empty memberId }">
					<div align="left">
								<textarea placeholder="로그인해야 작성가능합니다." readonly="readonly" style="width: 895px"></textarea>
							</div>
			 	</c:if>
			</section>

			<h1 class="">댓글 목록</h1>
			<br>
							<form id="del" method="post">
								<div id="replyList"></div>
							</form>
					
		</div>
		
		<br>
		<br>
		<br>
		<br>

		<br> <br> <br>

		<div>
		
			<form id="fbss" method="post">
				<input type="hidden" id="questionsId" name="questionsId"
					value="${vo.questionsId}">
			</form>
		</div>


		<script type="text/javascript">
			
		likeCount(); //좋아요 수 출력
		getReply(); // 댓글리스트 출력
		$('.area').hide();
		
		
		
		
			function subCall(str) {
				if (str == 'E') {
					fbss.action = "questionsEditForm.do"; // 수정
				} else if (str == 'D') {
					fbss.action = "questionsDelete.do"; // 삭제
				} 
				
				fbss.submit();
			}
			
		///// 좋아요 기능 /////
			// 좋아요 버튼 클릭시(좋아요 증가/제거)
			$('#like_update').click(function(){
				$.ajax({
					url : "likeUpdate.do" ,
					type : "POST",
					data : {
						questionsId : ${vo.questionsId},
						memberId : '${memberId}'
					},
					success : function(){
						// 바로 좋아요 수 구하는 함수 호출
						likeCount();
					},
					error : function(reject){
						console.log(reject);
					}
				});
			});
		
			// 현재 좋아요 수 구하기 (비동기식으로 좋아요 수 업데이트하기)
			function likeCount(){
				$.ajax({
					url : "getLikeCount.do" ,
					type : "POST",
					data : {
						questionsId : ${vo.questionsId}
					},
					success : function(result){
						console.log("좋아요수 가져오기 성공");
						$('.like_count').html(result);
					},
					error : function(reject){
						console.log(reject);
					}
				});
			}
			
			
			
			// 댓글 수정 ajax
			/*  function updComment(commentNum){
				$.ajax({
					url : "updComment.do",
					type : "POST",
					data : {
						commentNum
					},
					success : function(){
						
					},
					error : function(reject){
						console.log(reject);
					}
				});
			}*/
			
			//댓글 수정 확인창
			function chkUpd(commentNum){
				var msg = confirm('수정하시겠습니까?');
				if(msg == true){
					// 수정창으로 변경
					chUpd(commentNum);
				}else{
					return false;
				}
			}
			
			//댓글 수정창
			function chUpd(commentNum){
				var commUpdView = "";
				
				commUpdView += "<div id='commentNum"+commentNum+"'>";
				commUpdView += "<textarea class='form-control' cols='3' id='comarea'></textarea>";
				commUpdView += "<div align='right'><button type='button' class='btn btn-danger'";
				commUpdView += "onclick='updComm(" + commentNum + ")'>수정</button>";
				commUpdView += "<button class='btn btn-secondary' type='button' onclick='getReply()'>취소</button></div>";
				commUpdView += "</div>";
				
				$('#commentNum'+commentNum).replaceWith(commUpdView);
				$('#commentNum'+commentNum+'#comarea').focus();
				
			};
			
			//댓글 수정 ajax
			function updComm(commentNum){
				$.ajax({
					url : "updComment.do",
					type : "POST",
					data :{
						commentNum,
						commentBody : $('#comarea').val()
					},
					success : function(){
						alert("수정완료");
						getReply();
					},
					error : function(error){
						console.log(error);
					}
				});
			}
			
		
			/* 	// 삭제 form
				del.action = "delComment.do?commentNum="+commentNum;
				del.submit(); */
		
			function delComment(commentNum){
				$.ajax({
					url : "delComment.do",
					type : "POST",
					data : {
						commentNum : commentNum
					},
					success : function(){
						getReply();
					},
					error : function(reject){
						console.log(reject);
					}
				});
			}
			
			//댓글 삭제 확인창
			function chkDel(commentNum){
				var msg = confirm("정말 삭제하시겠습니까?");
				if(msg == true){
					// 확인 누를경우
					delComment(commentNum);
				}else{
					return false; //삭제 취소
				}
			}
			
			//댓글 등록 ajax
			$('#commReg').click(function(){
				if($('#commentBody').val().trim() === ""){
					alert("내용을 입력해주세요!");
					$('#commentBody').val("").focus();
				}else{
					$.ajax({
						url : "commentReg.do",
						type : "post",
						data : {
							questionsId : $('#questionsId').val() ,
							commentId : $('#commentId').val(),
							commentBody : $('#commentBody').val()
						},
						success: function(){
							alert("댓글 등록 완료!");
							// 댓글 리스트 보여주는 함수 호출
							getReply();
							$('#commentBody').val("");
						},
						error:function(reject){
							console.log(reject);
						}
					});
				}
			});
			
			// 댓글 리스트 불러오는 ajax
			function getReply(){
				$.ajax({
					url: "commentList.do",
					type : "POST",
					data : {
						questionsId : ${vo.questionsId}
					},
					success : function(json){
						json = json.replace(/\n/gi,"\\r\\n"); //개행문자 대체
						$('#replyList').text(""); // 댓글리스트 영역 초기화
						
						var obj = JSON.parse(json); // service 클래스로부터 전달된 문자열 파싱
						var replyList = obj.replyList; // 전달된 json의 키값
						var output = ""; // 댓글 목록을 누적하여 보여주기 위한 변수
						if(replyList.length == 0){
							output = "<div>등록된 댓글이 없습니다.</div>"
						}
						for(var i = 0; i<replyList.length; i++){ // 반복문을 통해 output에 누적
							
							output += "<div class='w3-border w3-padding'>";
							for(var j=0; j<replyList[i].length; j++){
								var reply = replyList[i][j];
								if(j === 0){
									output += "<div id='commentNum"+reply.commentNum+"'>";
								}else if(j === 1){
									output += "<i class='fa fa-user'></i>&nbsp;&nbsp;" + reply.commentId + "&nbsp;&nbsp;";
								}else if(j === 2){
									output += "&nbsp;&nbsp;<i class='fa fa-calendar'></i>&nbsp;&nbsp;" + reply.commentDate;
								}else if(j === 3){
									output +=  "<pre id='reply_body'>" + reply.commentBody + "</pre>&nbsp;&nbsp;";
								}else if(j === 4){
									output += "<a href='#' onclick='chkUpd("+reply.commentNum+")'>[수정]</a>&nbsp;<a href='#' onclick='chkDel(" + reply.commentNum + ")'>[삭제]</a></div></div>"
								}
							};
							
						};
						$('#replyList').html(output); // replyList에 output 출력
						
					},
					error : function(reject){
						console.log(reject);
					}
				});
			}
			
			
			

				
			
		
			
			
		</script>
</body>
</html>