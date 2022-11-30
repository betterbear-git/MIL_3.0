<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/amam.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/includeHTML.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/amam.js"></script>
</head>
<body>
<header><jsp:include page="include/header.jsp" /></header>
<div class="amam_tab_wrap">
	<div class="qna_tab">
		<h3>���л��� ���� �������� ���Ѵ�</h3>
	</div>
	<div class="advice_tab">
		<h3>���� ������ ����</h3>
	</div>
</div>
<div class="amam_main_cont">
	<div class="write_wrap">
		<button>�оߺ��� �����ϱ�</button>
	</div>
	<div class="select_wrap">
		<select>
			<option value="all">��ü �о�(Select area)</option>
			<option value="gi">����&���ͷ�Ƽ�� ������</option>
			<option value="cd">������ ������</option>
			<option value="de">������ �������θ�Ʈ</option>
			<option value="vc">���־� ��ǻ��</option>
			<option value="md">�̵�� ������</option>
		</select>
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
	<div class="paging_wrap">
	
	</div>
	<div class="search_wrap">
		
	</div>
	<div class="footer_wrap">
		<p>[���� ��� ����] media.industry.link@gmail.com</p>
	</div>
</div>
</body>
</html>