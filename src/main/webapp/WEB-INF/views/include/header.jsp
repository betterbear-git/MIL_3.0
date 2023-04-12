<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="${pageContext.request.contextPath}/resources/js/cil.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
<div class="header_wrap">
    <div class="title_wrap">
        <a class="title" onclick="location.href='/'"><p>MIL</p></a>
    </div>
    <!--<div class="nav_wrap">
        <div class="nav">
            <ul>
                <li class="cil_menu"><a id="header_nav" onclick="location.href='cil'">CIL</a></li>
                <li class="ii_menu"><a id="header_nav"  onclick="location.href='industry'">INDUSTRY-INSIGHT</li>
                <li class="amam_menu"><a id="header_nav" onclick="location.href='amam'">AMAM</a>
                	<ul class="subnav">
                		<li>재학생이 묻고 졸업생이 답한다</li>
                		<li>현직 선배의 조언</li>
                	</ul>
                </li>
                <li class="survey_menu"><a id="header_nav">SURVEY</li>
                <li><a class="log_info"><a id="header_nav">LOGIN</a></li>
            </ul>
        </div>
    </div>-->
    <div id="menu">
		<ul>
			<li class="cil_menu"><a class="header_nav" onclick="location.href='/cil'">CIL</a></li>
			<!-- <li class="ii_menu"><a id="header_nav"  onclick="location.href='industry'">INDUSTRY-INSIGHT</li> -->
			<li class="amam_menu"><a class="header_nav" onclick="location.href='/aam'">AAM</a></li>
            <li><a class="header_nav" onclick="location.href='login/'">LOGIN</a></li>
		</ul>
	</div>
</div>