<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/amam.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/industry.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/includeHTML.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/amam.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<body>
<header><jsp:include page="include/header.jsp" /></header>
<section class="amam_main_cont">
	<div class="search_wrap">
		<table>
			<tr>
				<td rowspan="2" id="search_icon"><i class="fas fa-search"></i></td>
				<td>
					<label class="radio_track"><input type="radio" id="all_track" class="track" name="track" value="all_track" checked><span>&nbsp;전&nbsp;체&nbsp;</span></label> 
					<label class="radio_track"><input type="radio" id="gi_track" class="track" name="track" value="gi_track"><span>게임&인터렉티브 콘텐츠</span></label> 
					<label class="radio_track"><input type="radio" id="cd_track" class="track" name="track" value="cd_track"><span>콘텐츠 디자인</span></label> 
					<label class="radio_track"><input type="radio" id="de_track" class="track" name="track" value="de_track"><span>디지털 엔터테인먼트</span></label> 
					<label class="radio_track"><input type="radio" id="vc_track" class="track" name="track" value="vc_track"><span>비주얼 컴퓨팅</span></label> 
					<label class="radio_track"><input type="radio" id="md_track" class="track" name="track" value="md_track"><span>미디어 데이터</span></label> 
				</td>
			</tr>
			<tr>
				<td>
					<select>
						<option value="all">전체</option>
						<option value="title">제목</option>
						<option value="writer">작성자</option>
						<option value="content">내용</option>
					</select>
					<input type="text" id="search_input"/>
					<button id="search_but" type="submit">검색</button>
				</td>
			</tr>
		</table>
	</div>
	<div class="list_wrap">
		<table>
			<tr>
				<th>No.</th>
				<th>Area</th>
				<th>Title</th>
				<th>Post by</th>
				<th>Date</th>
				<th>Hit</th>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</table>
	</div>
	<div class="footer_wrap">
		<div class="paging_wrap">
		
		</div>
		<div class="write_but_wrap">
			<button id="write_but" type="submit" onclick="location.href='write'">질문하기</button>
		</div>
	
		<!-- <p>[멘토 등록 문의] media.industry.link@gmail.com</p> -->
	</div>
</div>
</section>
<div class="amam_side"></div>
</body>
</html>