<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/memberJoin.css" rel="stylesheet" type="text/css">
<!-- jquery -->
<script
  src="https://code.jquery.com/jquery-3.6.3.js"
  integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
  crossorigin="anonymous"></script>
</head>
<body>
<body>
   
    <div id="login_form" ><!--로그인 폼 css-->
    <form  id="frm" action="memberJoin.do" onsubmit="return joinSubmit()" method="post" >
        <h3 class="login" style="letter-spacing:-1px; color: white">회 원 가 입</h3>
        <hr>
      
        <!-- 아이디 -->
        <p style="text-align: left; font-size:12px; color: #fff">아이디&nbsp;&nbsp; <span id="id_chk"></span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;
        
        <button style="align:right;" type="button" id="btn" onclick="idCheck()">중복체크</button></p>
        
        <input type="text" id="memberId" name="memberId" placeholder="아이디" class="size" required="required">
        
        <!-- 이름 -->
        <p style="text-align: left; font-size:12px; color: #fff">이름</p>
        <input type="text" id="memberName" name="memberName" placeholder="이름" class="size" required="required">
        <p></p>

        <!-- 비밀번호 -->
        <p style="text-align: left; font-size:12px; color: #fff">패스워드 </p>
        <input type="password" id="memberPw" name="memberPw" placeholder="영소문자와 숫자를 혼합하여 4~10 글자" class="size" required="required">

        <!-- 비밀번호 확인 -->
            <p style="text-align: left; font-size:12px; color: #fff"> </p>
            <input type="password" id="memberPwc" name="memberPwc" placeholder="비밀번호 확인" class="size" required="required">

		<!-- 전화번호 -->
        <p style="text-align: left; font-size:12px; color: #fff">연락처</p>
            <select class="size num1">
                <option value="1" selected>SKT</option>
                <option value="2" >KT</option>
                <option value="3" >LG</option>
            </select>
            <input type="tel" id="memberTel" name="memberTel"   class="size num2" required>
      
      	<!-- 성별 -->
            <p style="text-align: left; font-size:12px; color: #fff">성별</p>
  				<input type='radio' style="color:white;" id="male" name='memberGender' value='남성' />남
                <input type='radio' style="color:white;" id="female" name='memberGender' value='여성' checked/>여
      
      
         <!-- 생년월일 -->
            <p style="text-align: left; font-size:12px; color: #fff">생년월일</p>
                <input type="text" id="memberBirth" name="memberBirth" placeholder="ex) 19940306" class="size">
        
         <!-- 이메일 -->
            <p style="text-align: left; font-size:12px; color: #fff">E-mail</p>
                <input type="text" id="memberEmail" name="memberEmail" placeholder="이메일" class="size">
        
         <!-- 주소 -->
            <p style="text-align: left; font-size:12px; color: #fff">주소</p>
                <input type="text" id="memberAddress" name="memberAddress" placeholder="주소" class="size">
		<!-- 회원가입 버튼 -->
    <br><br>
            <input type="submit" value="회원가입" id="reg" class="btn btn-success">
    </form>

    <hr>
    <p class="find">
        <span><a href="memberLoginForm.do" style="font-size:15px">로그인 페이지로 이동</a></span>
        <span><a href="main.do" style="font-size:15px">홈 페이지로 이동</a></span>
    </p>
    </div>
   
   <script type="text/javascript">
   
   let initChkId = "";
   
   //id 유효성 검사 "중복확인" 눌렀을 때//
   function idCheck(){
	   let id = $('#memberId').val();
	   if(id == '' ){      // 1. 아이디 미입력
		   $('#id_chk').html("아이디를 입력해주세요!").css('color','red');
	   	   $('#memberId').focus();
	   	   return false;
	   }
	   
	   //2. 아이디 길이 초과 시
	   if(id.length > 10){
		   $('#id_chk').html("20자이내로 작성해주세요").css('color','red');
		   $('#memberId').val('');
		   $('#memberId').focus();
		   return false;
	   }
	   
	   //3. 아이디 정규식 ("아이디는 4자 이상 영소문자와 숫자를 혼합")
	   const pattern = new RegExp("^[a-z0-9]{3,19}$");
	   if(pattern.test(id) == false){
		   // 정규식에 부합하지 않으면,
		   $('#id_chk').html("아이디는 4자 이상, 영소문자와 숫자를 혼합해주세요!").css('color','red');
		   $('#memberId').val('');
		   $('#memberId').focus();
		   return false;
	   }
	   
	   // 4. 아이디 중복확인(ajax)
	   $.ajax({
		  url : "ajaxMemberIdCheck.do",
		  type : "POST",
		  data : {
			  memberId : $('#memberId').val()
		  },
		  success : function(data){
			  if(data == 1){
				  // 중복(사용불가)
				  $('#id_chk').html("사용불가능한 아이디").css('color','red');
				   $('#memberId').focus();
			  }
			  else if(data ==0){
				  // 사용가능
				  $('#id_chk').html("사용가능한 아이디!!").css('color','skyblue');
				  initChkId =  $('#memberId').val();
			  }
		  },
		  error : function(error){
			  console.log(error);
		  }
	   });
	   
   }
   
   // "회원가입" 버튼 눌렀을 때 유효성검사
   function joinSubmit(){
	   let id = $('#memberId').val();
	   let name = $('#memberName').val();
	   let pwd = $('#memberPw').val();
	   let pwdc = $('#memberPwc').val();
	   let tel = $('#memberTel').val();
	   let birth = $('#memberBirth').val();
	   let email = $('#memberEmail').val();
	   let addr = $('#memberAddress').val();
	   
	  
	   if(!name){
		   alert("이름을 입력하시오!");
		   $('#memberName').focus();
		   return false;
	   }
	   if(!pwd){
		   alert("비밀번호를 입력하시오!");
		   $('#memberPw').focus();
		   return false;
	   }
	   // 비밀번호 정규식
	   var regExpPwd = new RegExp("^[a-z0-9]{3,9}$");
	   if(regExpPwd.test(pwd) == false){
		   // 정규식에 부합하지 않으면
		   alert("잘못된 비밀번호 형식입니다!");
		   $('#memberPw').val('');
		   $('#memberPw').focus();
		   return false;
	   }
	   if(pwd != pwdc){
		   alert("비밀번호가 일치하지 않습니다!");
		   $('#memberPwc').val('');
		   $('#memberPwc').focus();
		   return false;
	   }
	   if(!tel){
		   alert("전화번호를 입력하시오!");
		   $('#memberTel').focus();
		   return false;
	   }
	   // 연락처 정규식 (\d는 숫자, {}안의 숫자는 개수를 의미)
	   var regExpTel = new RegExp(/^\d{3}-\d{3,4}-\d{4}$/);
	   if(regExpTel.test(tel)==false){
		   alert("연락처 형식이 잘못되었습니다!");
		   $('#memberTel').focus();
		   return false;
	   }
	   if(!birth){
		   alert("생년월일을 입력하시오!");
		   $('#memberBirth').focus();
		   return false;
	   }
	   
	   if(!email){
		   alert("이메일을 입력하시오!");
		   $('#memberEmail').focus();
		   return false;
	   }
	   if(!addr){
		   alert("주소를 입력하시오!");
		   $('#memberAddress').foucs();
		   return false;
	   }
	   //중복검사한 아이디와 현재 입력된 아이디와 같은지 검사
	   if(initChkId != id){
		   $('#id_chk').html("아이디 중복체크하세요!").css('color','red');
		   $('#memberId').focus();
		   return false;
	   }
	   // return false 없으면 드디어 action 동작!
   }
   
   
   

   // Ajax를 통해서 id 중복체크를 한다.
   /*function idCheck() {
      let id = document.getElementById('memberId').value;
      
      // 아이디 작성도 하지 않고 중복체크 누르면 다 사용가능하니까 막아주기
      if (id.length == 0) {
         alert('아이디를 작성해주세요.')
         document.getElementById('memberId').focus();
         return;
      }
      */
      
      /* 교수님 XMLHttpRequest
      const xhttp = new XMLHttpRequest();
       xhttp.onload = function() {
          if (this.readyState == 4 && this.status == 200) {
             
              if (this.responseText == '1') {
               alert("사용 가능한 아이디 입니다.");
               document.getElementById('btn').value = 'Yes';
               document.getElementById('memberPassword').focus();
              } else {
                 alert("사용할 수 없는 아이디 입니다.");
                 document.getElementById('memberId').value = "";
                 document.getElementById('memberId').focus();
              }
          }  // 실패하면 else 이후callBack함수
      }
       xhttp.open("GET", "ajaxMemberIdCheck.do?id=" + id);
       xhttp.send();
       */
       
      
       /*fetch('ajaxMemberIdCheck.do?memberId=' + id)
       .then(response => response.text())
      .then(data => responseResult(data));  // 이 곳에 Call Back함수를 작성하면 됨.

       // fetch 처리 CallBack함수
       function responseResult(data) {
         console.log('data = ' + data);
         
         if (data == '1') {
            alert("사용 가능한 아이디 입니다.");
            // 중복체크를 합격한 아이디만 rememberCheckId에 따로 저장해둔다.
            rememberCheckedId = document.getElementById('memberId').value;
            document.getElementById('memberPassword').focus();
          } else {
              alert("사용할 수 없는 아이디 입니다.");
              document.getElementById('memberId').value = "";
              document.getElementById('memberId').focus();
          } // 실패하면 callBack함수

      }
      
   }*/
   
   
   </script>


</body>

</html>