<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/cil.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/includeHTML.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/cil.js"></script>
</head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<body>
    <header>
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <jsp:include page="include/header.jsp" />
    </header>
    <section class="main_contents">
        <div class="area_section">
            <!--<div class="area_title">
                <select class="area_select" name="area">
                    <option value="심화전공">전공</option>
                    <option value="마이크로">마이크로</option>
                    <option value="복수전공">복수전공</option>
                    <option value="부전공">부전공</option>
                </select>
            </div>-->
            <div class="area_title"><span id="area_track">TRACK</span><span id="area_micro">MICRO</span></div>
            <table class="area_table" id="area_table">
                <tr>
                    <td class="gi_wrap">
                        <img id="gi_but" src="${pageContext.request.contextPath}/resources/img/area_icon/area_icon_gc.png">
                    </td>
                </tr>
                <tr>
                    <td class="cd_wrap">
                        <img id="cd_but" src="${pageContext.request.contextPath}/resources/img/area_icon/area_icon_cd.png">
                    </td>
                </tr>
                <tr>
                    <td class="de_wrap">
                        <img id="de_but" src="${pageContext.request.contextPath}/resources/img/area_icon/area_icon_de.png">
                    </td>
                </tr>
                <tr>
                    <td class="vc_wrap">
                        <img id="vc_but" src="${pageContext.request.contextPath}/resources/img/area_icon/area_icon_vc.png">
                    </td>
                </tr>
                <tr>
                    <td class="md_wrap">
                        <img id="md_but" src="${pageContext.request.contextPath}/resources/img/area_icon/area_icon_md.png">
                    </td>
                </tr>
            </table>
            <table class="area_table" id="micro_table">
                <tr>
                    <td class="gi_wrap">
                        <span class="micro_comp" id="first_micro">디지털 휴먼</span>
                    </td>
                </tr>
                <tr>
                    <td class="cd_wrap">
                        <span class="micro_comp" id="second_micro">메타버스(AR･VR)<br>지식재산</span>
                    </td>
                </tr>
                <tr>
                    <td class="de_wrap">
                        <span class="micro_comp" id="third_micro">메타버스<br>기획</span>
                    </td>
                </tr>
            </table>
        </div>
        <div class="cil_table_section">
            <table>
                <!-- 행: 17, 열 :8 -->
                <tr>
                    <th><span class="class_mark">1-1</span></th>
                    <th><span class="class_mark">1-2</span></th>
                    <th><span class="class_mark">2-1</span></th>
                    <th><span class="class_mark">2-2</span></th>
                    <th><span class="class_mark">3-1</span></th>
                    <th><span class="class_mark">3-2</span></th>
                    <th><span class="class_mark">4-1</span></th>
                    <th><span class="class_mark">4-2</span></th>
                </tr>
                <!--<tr>
                    <td><span class="must_math">수학1</span></td>
                    <td><span class="must_math">확률 및 통계1</span></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>-->
                <c:set var="index" value="0"/>
                <c:set var="row" value="2"/>
                <%
                	for(int i=0; i<15; i++)
                	{
                		%>
                		<tr>
                            <c:set var="col" value="1"/>
                            <c:choose>
                            <c:when test="${row==2}">
                                <td><span class="must_math">수학1</span></td>
                                <td><span class="must_math">확률 및 통계1</span></td>
                                <c:set var="col" value="3"/>
                                <%for(int j=0; j<6; j++){ %>
                                <td><div class="mandatory_cont">
                                    <c:if test = "${subjectList[index].row_id==row}">
                                        <c:if test = "${subjectList[index].col_id==col}">
                                            <span id="tr${subjectList[index].row_id}td${subjectList[index].col_id}"
                                                  onclick="getDetail('${subjectList[index].subject}')">
                                                <c:out value="${subjectList[index].name}"/>
                                            </span>
                                            <div class="cs" id="cs_tr${subjectList[index].row_id}td${subjectList[index].col_id}"><a class="cs_txt_tr${subjectList[index].row_id}td${subjectList[index].col_id}">C</a></div>

                                            <c:set var="index" value="${index+1}"/>
                                        </c:if>
                                    </c:if>
                                </div>
                                </td>
                                <c:set var="col" value="${col+1}"/>
                                <%} %>
                            </c:when>
                                <c:when test="${row==16}">
                                    <td id="mark_td"><a id="tr13td1"><div class="m_mark">M</div><a class="m_text"> Mandatory</a></a></td>
                                    <td id="mark_td" class="addLine"><a id="tr13td2"><div class="c_mark">C</div><a class="c_text"> Core</a></a></td>
                                    <td id="mark_td"><a id="tr13td3"><div class="s_mark">S</div><a class="s_text"> Support</a></a></td>
                                    <c:set var="col" value="4"/>
                                    <%for(int j=0; j<5; j++){ %>
                                    <td><div class="mandatory_cont">
                                        <c:if test = "${subjectList[index].row_id==16}">
                                            <c:if test = "${subjectList[index].col_id==col}">
                                            <span id="tr${subjectList[index].row_id}td${subjectList[index].col_id}"
                                                  onclick="getDetail('${subjectList[index].subject}')">
                                                <c:out value="${subjectList[index].name}"/>
                                            </span>
                                                <div class="cs" id="cs_tr${subjectList[index].row_id}td${subjectList[index].col_id}"><a class="cs_txt_tr${subjectList[index].row_id}td${subjectList[index].col_id}">C</a></div>
                                                <c:set var="index" value="${index+1}"/>
                                            </c:if>
                                        </c:if>
                                    </div>
                                    </td>
                                    <c:set var="col" value="${col+1}"/>
                                    <%} %>
                                </c:when>
                            <c:otherwise>
                			<%for(int j=0; j<8; j++){ %>
                				<td><div class="mandatory_cont">
                                    <c:if test = "${subjectList[index].row_id==row}">
                                        <c:if test = "${subjectList[index].col_id==col}">
                                            <span id="tr${subjectList[index].row_id}td${subjectList[index].col_id}"
                                                  onclick="getDetail('${subjectList[index].subject}')">
                                                <c:out value="${subjectList[index].name}"/>
                                            </span>
                                            <div class="cs" id="cs_tr${subjectList[index].row_id}td${subjectList[index].col_id}"><a class="cs_txt_tr${subjectList[index].row_id}td${subjectList[index].col_id}">C</a></div>

                                            <c:if test = "${subjectList[index].is_mandatory == 'T'}">
                                                <div class="cs_m" ><a>M</a></div>
                                            </c:if>
                                            <c:set var="index" value="${index+1}"/>
                                        </c:if>
                                    </c:if>
                                </div>
			               		</td>
	                			<c:set var="col" value="${col+1}"/>
                			<%} %>
                            </c:otherwise>
                            </c:choose>
                			<c:set var="row" value="${row+1}"/>
                		</tr>
                		<% 
                	}
                %>
                <!--
                <tr>
                    <td id="mark_td"><a id="tr13td1"><div class="m_mark">M</div><a class="m_text">: Mandatory</a></a></td>
                    <td id="mark_td" class="addLine"><a id="tr13td2"><div class="c_mark">C</div><a class="c_text">: Core</a></a></td>
                    <td id="mark_td"><a id="tr13td3"><div class="s_mark">S</div><a class="s_text">: Support</a></a></td>
                    <td><a id="tr13td4"></a></td>
                    <td><a id="tr13td5"></a></td>
                    <td><a id="tr13td6"></a></td>
                    <td><a id="tr13td7"></a></td>
                    <td><a id="tr13td8"></a></td>
                </tr>-->
            </table>
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
    <jsp:include page="modal/subjectDetail.jsp" />
</body>
<script src="${pageContext.request.contextPath}/resources/js/cil.js"></script>
<script>
    includeHTML();
    $('#gi_but').on('click',function(){
    	trackClick(133);
	});
    $('#cd_but').on('click',function(){
    	trackClick(130);
	});
    $('#de_but').on('click',function(){
    	trackClick(129);
	});
    $('#vc_but').on('click',function(){
    	trackClick(131);
	});
    $('#md_but').on('click',function(){
    	trackClick(132);
	});

    $('#area_track').on('click',function(){
        areaChange(0);
    });

    $('#area_micro').on('click',function(){
        areaChange(1);
    });

    $('#first_micro').on('click',function(){
        trackClick(777);
    });
    $('#second_micro').on('click',function(){
        trackClick(888);
    });
    $('#third_micro').on('click',function(){
        trackClick(999);
    });

    $(document).ready(function(){
        /*$.ajax({ url: "/cil/subject",
            context: document.body,
            success: (data) => {console.log(data);}
        });*/
        $.ajax({
            type:"get",
            url:"subjects",
            success:function(productList){
                $("#listView").empty();
                $.each(productList,function(i,product){
                    $("#listView").append(product.id+" "+product.name+" "+product.maker+" "+product.price+"<br>").css("background","pink");
                });
            }
        });//ajax
    });
</script>

</html>