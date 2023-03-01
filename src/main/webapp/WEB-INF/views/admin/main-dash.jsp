<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin/main-dash.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/includeHTML.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/pop-up.js"></script>
</head>
<header>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <jsp:include page="../include/menu.jsp" />
</header>
<body>
    <div class="dashboard_wrap">
            <div style="display: flex;">
                <p class="title">대시보드</p>
            <div class="date" style="display: flex;">
                <input type="date" name="schedule" min="2020.01.01" max="2024.12.31" />
                <div class="fs-20">~</div>
                <input type="date" name="schedule" min="2020.01.01" max="2024.12.31" />
                <button class="btn btn-primary m-l-sm ng-binding"><i class="fa fa-search"></i> 조회</button>
            </div>
            </div>
            
            <div class="content_box">
                <div class="join">
                    <p>가입자 수</p>
                    <p id="number">2,481</p>
                    <p id="today-number">(12)</p>
                    <div class="card-body"><canvas id="myAreaChart1" width="100%" height="50"></canvas></div>
                            <!-- <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div> -->
                </div>
                <div class="mentor">
                    <p>멘토 수</p>
                    <p id="number">397</p>
                    <div class="card-body"><canvas id="myAreaChart2" width="100%" height="50"></canvas></div>
                </div>
                <div class="average-connect">
                    <p>평균 접속 시간</p>
                    <p id="number">34</p>
                    <p id="today-number">(분)</p>
                    <div class="card-body"><canvas id="myAreaChart3" width="100%" height="50"></canvas></div>
                </div>
                <div class="secession">
                    <p>탈퇴한 회원 수</p>
                    <p id="number">1</p>
                    <div class="card-body"><canvas id="myAreaChart4" width="100%" height="50"></canvas></div>
                </div>
                <div class="student-id">
                    <p>학번 별 회원 수</p>
                    <div class="card-body"><canvas id="myBarChart" width="100%" height="50"></canvas></div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="tutorial_wrap">
                <p class="title">튜토리얼</p>
                <div class="content_box">
                    <video src="tutorial.mp4" controls>
                        이 브라우저에서 지원하지 않는 영상입니다.
                     </video>     
                </div>
            </div>
            <div class="announcement_wrap">
                <p class="title">공지사항</p>
                <div class="content_box">
                    <div class="list5">
                        <p id="number">5</p>
                        <p id="title">공지제목 입니다</p>
                        <p id="date">2023.02.20</p>
                    </div>
                    <div class="list4">
                        <p id="number">4</p>
                        <p id="title">공지제목 입니다</p>
                        <p id="date">2023.02.20</p>
                    </div>
                    <div class="list3">
                        <p id="number">3</p>
                        <p id="title">공지제목 입니다</p>
                        <p id="date">2023.02.20</p>
                    </div>
                    <div class="list2">
                        <p id="number">2</p>
                        <p id="title">공지제목 입니다</p>
                        <p id="date">2023.02.20</p>
                    </div>
                    <div class="list1">
                        <p id="number">1</p>
                        <p id="title">공지제목 입니다</p>
                        <p id="date">2023.02.20</p>
                    </div>
                </div>
            </div>   
        </div>


    <div class="left_menu">
        <meta name="viewport" content="height=device-height">
        <jsp:include page="include/menu.jsp" />
    </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/resources/js/chart-area-demo.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/chart-bar-demo.js"></script>
</body>
</html>
