<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="${pageContext.request.contextPath}/resources/js/admin.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin/menu.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin/admin.css">
<div class="menu_wrap">
    <div id="menu">
		<ul>
			<li class="aa"><a id="header_nav" onclick="location.href='/admin/curriculum'">교과과정편집</a></li>
			<li class="bb"><a id="header_nav"  onclick="location.href='/admin/subject'">과목편집</li>
			<li class="industry_menu"><a id="header_nav" onclick="location.href='/admin/video'">전문가영상관리</a></li>
			<li class="mentor_menu"><a id="header_nav" onclick="location.href='/admin/mentor'">멘토관리</li>
            <li class="mail_menu"><a id="header_nav" onclick="location.href='/admin/mail'">전체메일발송</a></li>
		</ul>
	</div>
</div>
</div>