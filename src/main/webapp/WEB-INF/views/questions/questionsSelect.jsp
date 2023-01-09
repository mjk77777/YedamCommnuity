<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		<br>
		<div>
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
					<form action="commentReg.do" method="post">
						<input type="hidden" name="questionsId" value="${vo.questionsId }">
						<input type="hidden" name="commentId" value="${memberId }">
							<div align="left">
								<textarea placeholder="내용을 입력하세요." name="commentBody"></textarea>
								<input type="submit" class="btn btn-dark" value="등록">
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
			<section class="reply-list table-common">
				<table border="1">
					<colgroup>
						<col width="100px">
					</colgroup>
							<thead>
								<tr>
									<th>작성자</th>
									<th>내용</th>
									<th>작성일자</th>
								</tr>
							</thead>
						
							<tbody>
							<c:if test="${empty list }"><td colspan="5" align="center">댓글이 존재하지 않습니다.</td></c:if>
							<c:if test="${not empty list }">
							<form id="del" method="post">
							<c:forEach items="${list }" var="li">
								<tr class="none">
									<td align="center"><input class="none" value="${li.commentId }" name="commentId" readonly></td>
									<td align="center"><input class="none" id="comBody" value="${li.commentBody }" name="commentBody" readonly></td>
									<td align="right"><input class="none" value="${li.commentDate }" name="commentDate" readonly></td>
									<td width="180">
										<a href="#" class="comm" style="text-align:center">[답변]</a>
										<c:if test="${memberId == li.commentId }">
											<a href="#" class="comm" onclick="updCom(${li.commentNum})">[수정]</a>
											<a href="#" class="comm" onclick="chkDel(${li.commentNum})">[삭제]</a>
											<a href="#" class="upd" onclick="updated(${li.commentNum})">[수정]</a>
											<a href="#" class="upd" id="reset">[취소]</a>
											<b>${li.commentNum }</b>
											<input type="hidden" name="commentNum" value="${li.commentNum}" >
											<input type="hidden" name="questionsId" value="${li.questionsId }">
										</c:if>
									</td>
								</tr>
							</c:forEach>
						</form>
							</c:if>
					</tbody>
				</table>
			</section>
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
			<form id="updForm" method="post">
				
				<input type="hidden" name="commentNum">
				<input type="hidden" name="commentBody">
				<input type="hidden" name="questionsId">
			</form>
		</div>


		<script type="text/javascript">
			$('.upd').hide();
		
			function subCall(str) {
				if (str == 'E') {
					fbss.action = "questionsEditForm.do"; // 수정
				} else if (str == 'D') {
					fbss.action = "questionsDelete.do"; // 삭제
				} 
				
				fbss.submit();
			}
			function delComment(commentNum){
				// 삭제 form
				del.action = "delComment.do?commentNum="+commentNum;
				del.submit();
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
			
			
			// 댓글 수정 누르면
			function updCom(commentNum){
				// "readonly" -> 해제!!
				$('#comBody').attr('readonly',false);
				$('#comBody').focus();
				$('.comm').hide();
				$('.upd').show();
				//'취소 누르면 그냥 새로고침'
				$('#reset').on('click',function(){
					return "main/questions/questionsSelect";
				});
			}
			
			//댓글 수정
			function updated(commentNum){
				updForm.action="updComment.do?commentNum="+commentNum;
				updForm.submit();
			}
			
			
		</script>
</body>
</html>