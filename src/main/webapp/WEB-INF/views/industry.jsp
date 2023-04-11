<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/industry.css">
	<!--<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/includeHTML.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/industry.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/amam.js"></script>
    <script src="https://kit.fontawesome.com/b89666f7fe.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<body>
<header>
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<jsp:include page="include/header.jsp" />
</header>
        <section class="main_contents">

			<div class="industry_contents">
				<div id="mentor-videos">
					<span><h3 class="aam_sub_title" style="display:inline">VIDEO</h3><span>- 선택한 직무에 관한 직무 정의 영상</span></span>
						  <div class="post-slider">
							<i class="fas fa-chevron-left prev"></i>

							<div class="post-wrapper">
								<c:forEach var="video" items="${videoList}">
								  <div class="post">
									  <img class="slider-image" src="${pageContext.request.contextPath}/resources/img/${video.thumbnail_url}" class="slider-image" onclick="getVideo('${video.video_link}')">
										<div class="post-info">
										 <c:out value="${video.video_title}" />
										</div>
								  </div>
								</c:forEach>
							</div>
							<i class="fas fa-chevron-right next"></i>
						  </div>
						  <!--post slider-->
				</div>
				<div class="bottom_side">
				 <div class="bottom_left">
					 <span><h3 class="aam_sub_title" style="display:inline">졸업생Q&A</h3><a onclick="location.href='/board'"><img class="expand_but" src="${pageContext.request.contextPath}/resources/img/icon/expand-arrows.png"></a></span>
				  <table class="table table-hover">
					  <thead>
						   <tr>
							<th class="min_td" scope="col">No.</th>
							<th class="min_td" scope="col">제목</th>
							<th class="min_td" scope="col">작성 일자</th>
						   </tr>
					  </thead>
					  <tbody>
					  <c:set var="index" value="0"/>
					  <c:forEach var="qnaList" items="${qnaList}">
						  <tr>
							  <td class="min_td"><c:out value="${qnaList.uid}"/></td>
							  <td class="min_td"><c:out value="${qnaList.title}"/>...</td>
							  <td class="min_td">
								  <c:out value="${fn:substring(qnaList.date,0,4)}.${fn:substring(qnaList.date,4,6)}.${fn:substring(qnaList.date,6,8)}"/>
							  </td>
							  <c:set var="index" value="${index+1}"/>
						  </tr>
					  </c:forEach>
					  </tbody>
				  </table>
					 <!-- pagination{s} -->

					 <div id="paginationBox">
						 <ul class="pagination pagination-sm">
							 <c:if test="${pagination.prev}">
								 <li class="page-item"><a class="page-link" href="#" onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a></li>
							 </c:if>
							 <c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">
								 <li class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> "><a class="page-link" href="#" onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')"> ${idx} </a></li>
							 </c:forEach>
							 <c:if test="${pagination.next}">
								 <li class="page-item"><a class="page-link" href="#" onClick="fn_next('${pagination.range}',
										 '${pagination.range}', '${pagination.rangeSize}')" >Next</a></li>
							 </c:if>
						 </ul>
					 </div>

					 <!-- pagination{e} -->
				 </div>
				<div class="bottom_center">
					<span><h3 class="aam_sub_title" style="display:inline">현직 선배 조언</h3><a onclick="location.href='/advice'"><img class="expand_but" src="${pageContext.request.contextPath}/resources/img/icon/expand-arrows.png"></a></span>
					<table class="table table-hover first-td">
						<thead>
						<tr>
							<th class="min_td" scope="col"></th>
							<th class="min_td" scope="col">이름</th>
							<th class="min_td" scope="col">회사명/직무/직책</th>
							<th class="min_td" scope="col">졸업 일자</th>
						</tr>
						</thead>
						<tbody>
						<c:set var="index" value="0"/>
						<c:forEach var="surveyList" items="${surveyList}">
							<tr>

								<c:choose>
									<c:when test = "${surveyList.track_id eq 'gi'}">
										<td class="min_td" style="background:#59bb4f; width:0.5px;"></td>
									</c:when>
									<c:when test = "${surveyList.track_id eq 'cd'}">
										<td class="min_td" style="background:#f19a48; width:0.5px;"></td>
									</c:when>
									<c:when test = "${surveyList.track_id eq 'de'}">
										<td class="min_td" style="background:rgb(191, 122, 231); width:0.5px;"></td>
									</c:when>
									<c:when test = "${surveyList.track_id eq 'vc'}">
										<td class="min_td" style="background:#3bd1ff; width:0.5px;"></td>
									</c:when>
									<c:when test = "${surveyList.track_id eq 'md'}">
										<td class="min_td" style="background:#ff6f6f; width:0.5px;"></td>
									</c:when>
									<c:otherwise>
										<td class="min_td"></td>
									</c:otherwise>
								</c:choose>
								<td class="min_td"><c:out value="${surveyList.name}"/></td>
								<td class="min_td"><c:out value="${surveyList.company}"/>...</td>
								<td class="min_td"><c:out value="${surveyList.graduate}"/></td>
								<c:set var="index" value="${index+1}"/>
							</tr>
						</c:forEach>
						</tbody>
					</table>
					<!-- pagination{s} -->

					<div id="paginationBox">
						<ul class="pagination pagination-sm">
							<c:if test="${s_pagination.prev}">
								<li class="page-item"><a class="page-link" href="#" onClick="fn_prev('${s_pagination.page}', '${s_pagination.range}', '${s_pagination.rangeSize}')">Previous</a></li>
							</c:if>
							<c:forEach begin="${s_pagination.startPage}" end="${s_pagination.endPage}" var="idx">
								<li class="page-item <c:out value="${s_pagination.page == idx ? 'active' : ''}"/> "><a class="page-link" href="#" onClick="fn_pagination('${idx}', '${s_pagination.range}', '${s_pagination.rangeSize}')"> ${idx} </a></li>
							</c:forEach>
							<c:if test="${s_pagination.next}">
								<li class="page-item"><a class="page-link" href="#" onClick="fn_next('${s_pagination.range}',
										'${s_pagination.range}', '${s_pagination.rangeSize}')" >Next</a></li>
							</c:if>
						</ul>
					</div>

					<!-- pagination{e} -->
				</div>
				 <div class="bottom_right">
				 <span><h3 class="aam_sub_title" style="display:inline">미디어 갤러리</h3><img class="expand_but" src="${pageContext.request.contextPath}/resources/img/icon/expand-arrows.png"></span>
				 </div>
				</div>
			</div>
			<div class="jobs_section">
				<div class="jobs_title"><span>JOBS</span></div>
				<div class="jobs_list">
					<table class="jobs_table">
						<c:set var="index" value="0"/>
						<c:forEach var="jobList" items="${jobList}">
							<tr>
								<td class="${jobList.job_id}">
									<p><c:out value="${jobList.name}"/></p>
								</td>
							</tr>
							<c:set var="index" value="${index+1}"/>
						</c:forEach>
					</table>
				</div>
			</div>
        </section>

<!--
include로 jsp를 따로 뺐으나 로딩이 오래 걸려서
industry.jsp에 코드를 포함
-->
<div id ="videoView" class="videoView">
	<div class="black_bg"></div>
	<div class="modal_wrap" id="modal_wrap">
		<div class="modal_header">
			<p class="video_title"></p>
		</div>
		<div class="modal_body">
			<iframe class="video" width="560" height="315" src="" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		</div>
	</div>
</div>
<!--<jsp:include page="modal/industryVideo.jsp" />-->

</body>
<script src="/js/industry.js"></script>
<script>
    includeHTML();
    
    $('.post-wrapper').slick({
    	  slidesToShow: 3,
    	  slidesToScroll: 1,
    	  autoplay: true,
    	  autoplaySpeed: 5000,
    	  nextArrow:$('.next'),
    	  prevArrow:$('.prev'),
    	});

	$(document).mouseup(function (e){
		var backGround = $(".videoView");
		var layerPopup = $(".modal_wrap");

		if(layerPopup.has(e.target).length === 0){
			layerPopup.attr("style", "display:none");
			backGround.find(".black_bg").attr("style", "display:none");

		}
	});
</script>

</html>