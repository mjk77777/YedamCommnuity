<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="css1/css/memberLogin2.css" rel="stylesheet" type="text/css">
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
   crossorigin="anonymous">
   <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">

<!-- 제이쿼리 -->
<script
  src="https://code.jquery.com/jquery-3.6.3.js"
  integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
  crossorigin="anonymous"></script>

<style type="text/css">
.custom-btn {
  width: 130px;
  height: 40px;
  color: #fff;
  border-radius: 5px;
  padding: 10px 25px;
  font-family: 'Lato', sans-serif;
  font-weight: 500;
  background: transparent;
  cursor: pointer;
  transition: all 0.3s ease;
  position: relative;
  display: inline-block;
   box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
   7px 7px 20px 0px rgba(0,0,0,.1),
   4px 4px 5px 0px rgba(0,0,0,.1);
  outline: none;
}
.btn-16 {
  border: none;
  color: #000;
}
.btn-16:after {
  position: absolute;
  content: "";
  width: 0;
  height: 100%;
  top: 0;
  left: 0;
  direction: rtl;
  z-index: -1;
  box-shadow:
   -7px -7px 20px 0px #fff9,
   -4px -4px 5px 0px #fff9,
   7px 7px 20px 0px #0002,
   4px 4px 5px 0px #0001;
  transition: all 0.3s ease;
}
.btn-16:hover {
  color: #000;
}
.btn-16:hover:after {
  left: auto;
  right: 0;
  width: 100%;
}
.btn-16:active {
  top: 2px;
}
#kakaoBtn {
	cursor : pointer;
}
</style>

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript">

<!-- 로그인 유효성 검사 -->
	function frmSubmit(){
			if($('#memberId').val() == ''){
				alert('아이디를 입력해주세요!');
				return false;
			}
			if($('#memberPw').val() == ''){
				alert('비밀번호를 입력해주세요!');
				return false;
			}
			return true;
		} 
	
<!-- <!-- 카카오 로그인 api -->

Kakao.init('effc9084dea41c3c16edf6c22f6b5815');
console.log(Kakao.isInitialized()); // 초기화 판단여부

function kakaoLogin(){
	Kakao.Auth.login({
		// 받아올 정보 이름
		scope : 'profile_nickname,account_email,birthday',
		success : function(authObj){
			console.log(authObj);
			// 위에까진 로그인이 성공한 상태
			// 이제 데이터 받아올거야
			Kakao.API.request({
				//현재 로그인한 user의 데이터 가지고 있음
				url : '/v2/user/me',
				success : res => {
					const name = res.properties.nickname;
					const email = res.kakao_account.email;
					const birthday = res.kakao_account.birthday;
					
					console.log("name:"+name);
					console.log(email);
					console.log(birthday);
					
					$('#kakaoemail').val(email);
					$('#kakaoname').val(name);
					$('#kakaobirth').val(birthday);
					
					console.log("name는:"+name);
					document.kakaoFrm.submit();
				}
			});
		}
	});
} 

function kakaoLogout(){
	if(Kakao.Auth.getAccessToken()){
		Kakao.API.request({
			url : '/v1/user/unlink',
			success : function(res){
				console.log(res);
			},
			fail :function(err){
				console.log(err);
			},
		});
		Kakao.Auth.setAccessToken(undefined);
	}
}

</script>

</head>

<body>
<div class="page" style="padding-left: 100px">
  <div class="container">
    <div class="left" style="padding-top: 60px">
      <div class="login">Login</div>
      <div class="eula" style="color: black; font-size: 30px">Yedam Community</div>
    </div>
    <div class="right" style="padding-top: 60px">
     
<form id="lgm" name="lgm" action="memberLogin.do" method="post" onsubmit="return frmSubmit();">
      
        <label for="id" style= "font-size:20px; color: white">ID</label>
        <input type="text" id="memberId" name="memberId">
        <label for="password" style= "font-size:20px; color: white">Password</label>
        <input type="password" id="memberPw" name="memberPw">
        <br> <br> <br>
        
         <input  type="submit" class="custom-btn btn-16" style="color: white" value="로그인"  id="log">
         <button type="button" class="custom-btn btn-16" style="color: white; margin: 30px" onclick="location.href='memberJoinForm.do'">회원가입</button>
         <button type="button" class="custom-btn btn-16" style="color: white" onclick="location.href='main.do'">홈</button>
         
         <br><br>
     </form>
        
        
     <form action="kakaoLogin.do" name="kakaoFrm" id="kakaoFrm" method="post">   
         	<input type="hidden" name="kakaoemail" id="kakaoemail">
         	<input type="hidden" name="kakaoname" id="kakaoname">
         	<input type="hidden" name="kakaobirth" id="kakaobirth">
      </form> 
         <div align="center">
         	<a href="javascript:kakaoLogin()"><img src="images/카카오로그인.png" alt="카카오로그인 이미지"></a>
         	<a href="javascript:kakaoLogout()">카카오 로그아웃</a>
         </div>
      </div>
         </div>
     
 </div>


<%-- <%
session.setAttribute("memberId", "52");
response.sendRedirect("memberLogin.do");
%> --%>
 


  <!-- <script>
   var current = null;
   document.querySelector('#memberId').addEventListener('focus', function(e) {
     if (current) current.pause();
     current = anime({
       targets: 'path',
       strokeDashoffset: {
         value: 0,
         duration: 700,
         easing: 'easeOutQuart'
       },
       strokeDasharray: {
         value: '240 1386',
         duration: 700,
         easing: 'easeOutQuart'
       }
     });
   });
   document.querySelector('#memberPw').addEventListener('focus', function(e) {
     if (current) current.pause();
     current = anime({
       targets: 'path',
       strokeDashoffset: {
         value: -336,
         duration: 700,
         easing: 'easeOutQuart'
       },
       strokeDasharray: {
         value: '240 1386',
         duration: 700,
         easing: 'easeOutQuart'
       }
     });
   });
   document.querySelector('#submit').addEventListener('focus', function(e) {
     if (current) current.pause();
     current = anime({
       targets: 'path',
       strokeDashoffset: {
         value: -730,
         duration: 700,
         easing: 'easeOutQuart'
       },
       strokeDasharray: {
         value: '530 1386',
         duration: 700,
         easing: 'easeOutQuart'
       }
     });
   });
   
</script> -->
<script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous">
   </script>
   
   
</body>
</html>