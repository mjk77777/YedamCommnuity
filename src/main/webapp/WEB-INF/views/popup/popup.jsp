<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팝업창</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">

<script type="text/javascript">

//head 태그 안에 스크립트 선언
        function setCookie( name, value, expiredays ) { 
            var todayDate = new Date(); //Date를 활용하여 원하는 쿠키유지시간 조절 가능 ex. todayDate.getHours()+추가값...
            todayDate.setDate( todayDate.getDate() + expiredays ); 
            // escape() 함수는 해당문자들을 16진수 문자로 바꿔줌 (for 쉼표와 세미콜론 같은 문자가 쿠키 문자열과의 충돌을 막기 위해)
            document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toUTCString() + ";"
        }
        function closePop() {
            if ( document.pop_form.chkbox.checked ){
                setCookie( "maindiv", "done" , 1 );
                // 알림
            }
            // 없어진 것처럼 보이지만 그냥 숨은거임
            document.all['layer_popup'].style.visibility = "hidden";
        }
</script> 


<style>
font-family: 'Gowun Dodum', sans-serif;
.layerPopup img{
margin-bottom : 20px;}
.layerPopup:before {
	display:block; content:""; 
	position:fixed; left:0; top:0; width:100%; height:100%;
	 background:rgba(0,0,0,.5); z-index:9000}
	 
.layerPopup .layerBox {
    z-index:10000;   
	position:fixed; left:50%; top:50%; 
	transform:translate(-50%, -50%); padding:43px; 
	background:#fff; border-radius:6px; }
	
.layerPopup .layerBox .title {
	margin-bottom:10px; padding-bottom:10px;
	 font-weight:600; border-bottom:1px solid #d9d9d9;}
	 
.layerPopup .layerBox .btnTodayHide {
	font-size:14px; font-weight:600; color:black; 
	float: left;text-decoration:none;width: 150px; 
	height : 30px;line-height:30px;border:black solid 1px;
	 text-align : center;text-decoration:none;
}
.layerPopup div{
	display : inline;
}
.layerPopup form{
	margin-top : 5px;
	font-size:16px; font-weight:600;
	weight: 100%;
	height : 30px;
	line-height:30px
}
.layerPopup #close {
	font-size:16px; font-weight:600; width: 40px; height : 30px;
	color:black; float: right; line-height:30px; text-align : center;
	text-decoration:underline;
}
.layerPopup a{
	text-decoration : none;
	color : black;width: 50px;height : 40px;
}
 #content{
	font-size : 14px;
}
</style>

</head>
<body>
	<!-- layer popup content -->
	<div class="layerPopup" id="layer_popup" style="visibility: visible;">
    <div class="layerBox">
        <h4 class="title" align="center">공지사항</h4>
        <div class="cont" align="center">
            <p>
				<img src="images/warning.png" width="200px" height="200px" usemap="#popup" alt="event page">
            </p>
            <div align="center">
            	<h5>          ---서버 점검시간 공지---      </h5>
            	<div align="center" id="content">
            		<p style="color:red"><strong>2023년 x월 xx일(월)</strong></p>
            		<p>오후 9시 ~ 11시까지 <br>
            		(약 2시간 소요)<br>
            		많은 양해 부탁드립니다.</p>
            	</div> 
            </div>
        </div>
          <form name="pop_form">
        	<div id="check" ><input type="checkbox" name="chkbox" value="checkbox" id='chkbox' >
        	<label for="chkbox">&nbsp;&nbsp;오늘 하루동안 보지 않기</label></div>
			<div id="close" ><a href="javascript:closePop();">닫기</a></div>    
		</form>
	</div>
</div>



 <script type="text/javascript">
    cookiedata = document.cookie;   
    if ( cookiedata.indexOf("maindiv=done") < 0 ){     
    	// 쿠키 "검색" - 쿠키도 문자열로 되어있기 때문에 문자열 탐색에 쓰이는 함수를 똑같이 사용(indexOf)
    		// -1이 반환되면 해당 문자열이 없는 거임 = 쿠키가 없다(만료됐다) = visible
        document.all['layer_popup'].style.visibility = "visible";
    }
    else {
        document.all['layer_popup'].style.visibility = "hidden";
    }
</script>
</body>
</html>