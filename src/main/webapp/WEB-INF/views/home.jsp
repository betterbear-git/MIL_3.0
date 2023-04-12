<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/home.css">
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/includeHTML.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/cil.js"></script>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body>
<header><jsp:include page="include/header.jsp" /></header>
<section class="main_contents">
    <div class="main_title">
        <p class="main_title_txt">Media-Industry Link</p>
        <p class="tutorial_video"> <img id="play_but" src="${pageContext.request.contextPath}/resources/img/icon/play-alt-mint.png">데스크탑 튜토리얼 동영상</p>
        <p class="tutorial_video"><img id="play_but" src="${pageContext.request.contextPath}/resources/img/icon/play-alt-mint.png">모바일 튜토리얼 동영상&nbsp;&nbsp;&nbsp;</p>
    </div>

    <div class="menu_box">
        		<span id="menu_box_cil" onclick="location.href='/cil'">
        			<div class="left_up">
			          	<p class="menu_box_sub_title">Curriculum-Career path Link</p>
			          	<p class="menu_box_cont">미디어학과의 교과과정을 분야별/직무별<br/>커리큘럼으로 볼 수 있습니다.</p>
			         </div>
			         <div class="right_bottom">
			          	<p class="menu_box_title">CIL</p>
			          </div></a>
                    </a>
			    </span>
        <span id="menu_box_aam" onclick="location.href='/aam'">
			          <div class="left_up">
			          	<p class="menu_box_sub_title">Ajou Alumni Mentors</p>
			          	<p class="menu_box_cont">선배에게 질의응답을 할 수 있고<br/>학습 결과물을 확인할 수 있습니다.</p>
			          </div>
			          <div class="right_bottom">
			          	<p class="menu_box_title">AAM</p>
			          </div></a>
			    </span>
    </div>
</section>
</body>


</html>