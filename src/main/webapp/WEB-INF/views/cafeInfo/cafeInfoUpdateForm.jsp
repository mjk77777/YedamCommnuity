<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style type="text/css">

section.heading-page {
	background-image: url(headercss/images/food2.jpg);
	background-position: center center;
	background-repeat: no-repeat;
	background-size: cover;
	padding-top: 230px;
	padding-bottom: 110px;
	text-align: center;
}

.register{
    background-image: url(images/studyCafeInsertForm.jpg);
    background-size: cover;
}
.register-left{
    text-align: center;
    color: #fff;
    margin-top: 4%;
}
.register-left input{
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    width: 60%;
    background: #f8f9fa;
    font-weight: bold;
    color: #383d41;
    margin-top: 30%;
    margin-bottom: 3%;
    cursor: pointer;
}
.register-right{
    background: #f8f9fa;
    border-top-left-radius: 10% 50%;
    border-bottom-left-radius: 10% 50%;
}
.register-left img{
    margin-top: 15%;
    margin-bottom: 5%;
    width: 25%;
    -webkit-animation: mover 2s infinite  alternate;
    animation: mover 1s infinite  alternate;
}
@-webkit-keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
@keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
.register-left p{
    font-weight: lighter;
    padding: 12%;
    margin-top: -9%;
}
.register .register-form{
    padding: 10%;
    margin-top: 10%;
}
.btnRegister{
    float: right;
    margin-top: 10%;
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    background: #0062cc;
    color: #fff;
    font-weight: 600;
    width: 50%;
    cursor: pointer;
}
.register .nav-tabs{
    margin-top: 3%;
    border: none;
    background: #0062cc;
    border-radius: 1.5rem;
    width: 28%;
    float: right;
}
.register .nav-tabs .nav-link{
    padding: 2%;
    height: 34px;
    font-weight: 600;
    color: #fff;
    border-top-right-radius: 1.5rem;
    border-bottom-right-radius: 1.5rem;
}
.register .nav-tabs .nav-link:hover{
    border: none;
}
.register .nav-tabs .nav-link.active{
    width: 100px;
    color: #0062cc;
    border: 2px solid #0062cc;
    border-top-left-radius: 1.5rem;
    border-bottom-left-radius: 1.5rem;
}
.register-heading{
    text-align: center;
    margin-top: 8%;
    margin-bottom: -15%;
    color: #495057;
}

</style>

</head>
<body>
	
	<!-- 위쪽 사진부분 -->
	<section class="heading-page header-text" id="top">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">

					<h1 class="display-4" style="font-weight: lighter; color: white">스터디 카페</h1>
				</div>
			</div>
		</div>
	</section>

	<div class="register">
		<form action="cafeInfoUpdate.do" onsubmit="return hashtagCombine()" method="post" enctype="multipart/form-data">
			<div class="row">
			    <div class="col-md-3 register-left">
			        <img src="" alt=""/>
			    </div>
			    <div class="col-md-9 register-right">
			        <div class="tab-content" id="myTabContent">
			            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
			                <h1 class="register-heading">스터디 카페 정보를 입력해주세요</h1>
			                <div class="row register-form">
			                	<div class="col-md-12">
			                		<h2>기본정보</h2>
			                    </div>
			                    <div class="col-md-6">
			                        <div class="form-group">
			                            <input type="text" class="form-control" placeholder="스터디 카페 이름" value="${cafeInfo.cafeInfoName}"
			                            	id="cafeInfoName" name="cafeInfoName" required />
			                        </div>
			                    </div>
			                    <div class="col-md-6">
			                        <div class="form-group">
			                            <input type="text" class="form-control" placeholder="스터디 카페 링크" value="${cafeInfo.cafeInfoLink}"
			                            	id="cafeInfoLink" name="cafeInfoLink" required />
			                        </div>
			                    </div>
			                    
			                    <div class="col-md-12">
			                    	<hr>
			                    </div>
			                    
			                    <div class="col-md-12">
			                		<h2>#해시태그</h2>
			                    </div>
			                    <div class="col-md-4">
			                        <div class="form-group">
			                            <input type="text" class="form-control"  placeholder="해시태그 키워드 1" value="${hashtag1}"
			                            	id="cafeInfoHashtag1" name="cafeInfoHashtag1" required />
			                        </div>
			                    </div>
			                    <div class="col-md-4">
			                        <div class="form-group">
			                            <input type="text" class="form-control"  placeholder="해시태그 키워드 2" value="${hashtag2}"
			                            	id="cafeInfoHashtag2" name="cafeInfoHashtag2" />
			                        </div>
			                    </div>
			                    <div class="col-md-4">
			                        <div class="form-group">
			                            <input type="text" class="form-control"  placeholder="해시태그 키워드 3" value="${hashtag3}"
			                            	id="cafeInfoHashtag3" name="cafeInfoHashtag3" />
			                        </div>
			                    </div>
			                    
			                    <div class="col-md-12">
			                    	<hr>
			                    </div>
			                    
			                    <div class="col-md-12">
			                		<h2>사진 첨부</h2>
			                    </div>
			                    <div class="col-md-6">
			                        <div class="form-group">
			                            <input type="file" class="form-control" value="${cafe.cafeInfoAttech}" onchange="${cafe.cafeInfoAttech}" id="cafeInfoAttech" name="cafeInfoAttech" required />
			                            	${cafe.cafeInfoAttech}
			                        </div>
			                    </div>
			                    
			                    <div class="col-md-6">
			                    </div>
			                    <div class="col-md-7">
			                    </div>
			                    
			                    <div class="col-md-5">
			                    	<input type="hidden" id="cafeInfoHashtag" name="cafeInfoHashtag">
			                    	<input type="hidden" id="cafeInfoId" name="cafeInfoId" value="${cafeInfo.cafeInfoId}">
			                        <input type="submit" class="btnRegister"  value="카페 수정"/>
			                        <input type="button" class="btnRegister" onclick="location.href='cafeInfo.do'" value="취소"/>
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div>
			</div>
		</form>
	</div>
    <script type="text/javascript">
    	// submit하기 전에 해쉬태그 합치기.
    	function hashtagCombine() {
    		let hashtag1 = document.getElementById('cafeInfoHashtag1').value;
    		let hashtag2 = document.getElementById('cafeInfoHashtag2').value;
    		let hashtag3 = document.getElementById('cafeInfoHashtag3').value;
    		
    		let hashtag = '#' + hashtag1 + ' #' + hashtag2 + ' #' + hashtag3;
    		
    		document.getElementById('cafeInfoHashtag').value = hashtag;
    		
    		return true;
    	}
    </script>
</body>
</html>


