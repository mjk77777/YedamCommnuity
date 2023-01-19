<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="apple-touch-icon" sizes="76x76"
	href="myPageCSS/img/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="myPageCSS/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />


<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />


<!-- Bootstrap core CSS     -->
<link href="myPageCSS/css/bootstrap.min.css" rel="stylesheet" />

<!-- Animation library for notifications   -->
<link href="myPageCSS/css/animate.min.css" rel="stylesheet" />

<!--  Paper Dashboard core CSS    -->
<link href="myPageCSS/css/paper-dashboard.css" rel="stylesheet" />

<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="myPageCSS/css/demo.css" rel="stylesheet" />

<!--  Fonts and icons     -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Muli:400,300'
	rel='stylesheet' type='text/css'>
<link href="myPageCSS/css/themify-icons.css" rel="stylesheet">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<title>Insert title here</title>




<style>
.tableBack {
	background-image: url("css1/images/tableBack.jpg");
	background-position: right bottom;
}

.table-dark {
	text-align: center;
}

.member {
	width: 900px;
	background-color: #fff;
	border-collapse: collapse;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
	border-radius: 5px;
	overflow: hidden;
}

.member caption {
	font-size: 20px;
	margin-bottom: 30px;
}

.member tr {
	border-bottom: 1px solid #eee;
}

.member tr:last-child {
	border: none;
}

.member tr:nth-child(odd) {
	background-color: #ddd;
}

.member th, .member td {
	padding: 12px;
	text-align: center;
}

.member tr th {
	background-color: black;
	color: #fff;
}

.member tr th:first-child {
	border-radius: 5px 0 0 0;
}

.member tr th:last-child {
	border-radius: 0 5px 0 0;
}

.member tr td:last-child {
	color: crimson;
	font-weight: 500;
}

section.heading-page {
	background-image: url(myPageCSS/img/myPage.jpg);
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
<br>
<div class="wrapper">
	<div class="sidebar" data-background-color="white" data-active-color="danger">

    

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="main.do" class="simple-text">
                    Yedam Community
                </a>
            </div>

            <ul class="nav">
               
                <li>
                    <a href="memberMyHomeForm.do">
                        <i class="ti-user"></i>
                        <p>MY PAGE</p>
                    </a>
                </li>
                <li class="active">
                    <a href="likeList.do">
                        <i class="fa-regular fa-heart"></i>
                        <p>좋아요 목록</p>
                    </a>
                </li>
                
				
            </ul>
    	</div>
    </div>

    <div class="main-panel">
		<nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar bar1"></span>
                        <span class="icon-bar bar2"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                    <a class="navbar-brand" href="#">'좋아요' 목록</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="ti-panel"></i>
								<p>Stats</p>
                            </a>
                        </li>
                        <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="ti-bell"></i>
                                    <p class="notification">5</p>
									<p>Notifications</p>
									<b class="caret"></b>
                              </a>
                              <ul class="dropdown-menu">
                                <li><a href="#">Notification 1</a></li>
                                <li><a href="#">Notification 2</a></li>
                                <li><a href="#">Notification 3</a></li>
                                <li><a href="#">Notification 4</a></li>
                                <li><a href="#">Another notification</a></li>
                              </ul>
                        </li>
						<li>
                            <a href="#">
								<i class="ti-settings"></i>
								<p>Settings</p>
                            </a>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>

                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <p class="category">상세페이지를 보려면 <b>클릭</b>하세요.</p>
                                
                            </div>
                            <div class="content table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                        <th>no.</th>
                                    	<th>제목</th>
                                    	<th>내용</th>
                                    	<th>작성일자</th>
                                    	<th>작성자</th>
                                    </thead>
									<tbody>
										<tr>
											<c:forEach items="${members}" var="member">
												<tr onclick="selectMember('${member.memberId}')"
													onMouseover="this.style.backgroundColor='#E2E2E2';"
													onMouseout="this.style.backgroundColor='white';">
													<td class="align-middle py-3">
														<div class="d-flex align-items-center">
															<div class="position-relative mr-2">
																<span
																	class="indicator indicator-lg indicator-bordered-reverse indicator-top-left indicator-success rounded-circle"></span>
																<!--img class="avatar rounded-circle" src="#" alt="John Doe"-->
																
															</div>
															${member.memberId }
														</div>
													</td>
													<td class="py-3">${member.memberName}</td>
													<td class="py-3">${member.memberTel}</td>
													<td class="py-3">${member.memberEmail}</td>
													<td class="py-3"><span
														class="badge badge-pill badge-success">Verified</span></td>

												</tr>
											</c:forEach>


										</tr>

									</tbody>
								</table>
					</div>
					</div>
					</div>
	</div>
	<footer class="footer">
		<div class="container-fluid">
			<nav class="pull-left">
				<ul>

					<li><a href="http://www.creative-tim.com"> Creative Tim </a></li>
					<li><a href="http://blog.creative-tim.com"> Blog </a></li>
					<li><a href="http://www.creative-tim.com/license">
							Licenses </a></li>
				</ul>
			</nav>
			<div class="copyright pull-right">
				&copy;
				<script>
					document.write(new Date().getFullYear())
				</script>
				, made with <i class="fa fa-heart heart"></i> by <a href="#">Yedam
					Community</a>
			</div>
		</div>
	</footer>











	<script type="text/javascript">
		function actionForm(str) {
			switch (str) {
			case 'memberUpdate':
				alert('회원수정이 완료 되었습니다!')
				mtd.action = 'memberUpdate.do';
				break;
			case 'memberDelete':
				mtd.action = 'memberDelete.do';
				break;

			}

			mtd.submit();
		}
	</script>



	<!--   Core JS Files   -->
	<script src="myPageCSS/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="myPageCSS/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="myPageCSS/js/bootstrap-checkbox-radio.js"></script>

	<!--  Charts Plugin -->
	<script src="myPageCSS/js/chartist.min.js"></script>

	<!--  Notifications Plugin    -->
	<script src="myPageCSS/js/bootstrap-notify.js"></script>

	<!--  Google Maps Plugin    -->
	<script type="text/javascript"
		src="https://maps.googleapis.com/maps/api/js"></script>

	<!-- Paper Dashboard Core javascript and methods for Demo purpose -->
	<script src="myPageCSS/js/paper-dashboard.js"></script>

	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="myPageCSS/js/demo.js"></script>


</body>
</html>