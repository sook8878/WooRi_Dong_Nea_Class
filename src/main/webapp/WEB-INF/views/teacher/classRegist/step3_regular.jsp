<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Boutique | Ecommerce bootstrap template</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="robots" content="all,follow">
  <!-- Bootstrap CSS-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap/css/bootstrap.min.css">
  <!-- Lightbox-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/lightbox2/css/lightbox.min.css">
  <!-- Range slider-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/nouislider/nouislider.min.css">
  <!-- Bootstrap select-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap-select/css/bootstrap-select.min.css">
  <!-- Owl Carousel-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2/assets/owl.carousel.min.css">
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2/assets/owl.theme.default.css">
  <!-- Google fonts-->
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Libre+Franklin:wght@300;400;700&amp;display=swap">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Martel+Sans:wght@300;400;800&amp;display=swap">
  <!-- theme stylesheet-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/style.default.css" id="theme-stylesheet">
  <!-- Custom stylesheet - for your changes-->
  <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/custom.css">
  <!-- Favicon-->
  <link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/teacher/img/favicon.png">
  <!-- Tweaks for older IEs-->
  <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  <style>
    .thumbnail-file-area input[type=file] {
      display: none;
    }
    .table-bordered th{
      text-align: center;
    }

  </style>

</head>

<body>
      <div class="container" style="width: 90%; margin :0 auto; display:none;" id="regular">
        <!-- 정규클래스등록1-->
        <div class="row">
          <div class="col-md-2 step" >클래스 기본정보</div>
          <div class="col-md-2 step" >클래스 소개</div>
          <div class="col-md-3 nowStep" >클래스 일정 및 가격</div>
          <div class="col-md-2 step">클래스 부가정보</div>
          <div class="col-md-3 step">클래스 등록 및 약관동의</div>
        </div>
        <br><br><br>
        <h6>스케쥴 등록</h6>
        <div style="font-size: 15px; opacity: .7">
          - 개별일정 : 반복되지 않는 일정을 개별로 등록할 경우<br>
          - 요일반복 : 특정 기간 매주 같은 요일의 일정을 등록할 경우<br>
          - 상시모집 : 날짜를 지정하지 않고 상시로 모집하는 경우<br>
          - 정규모집 : 원데이가 아닌 주, 월 단위 정규 과정을 모집하는 경우<br>
          (정규모집의 경우 정규모집 또는 상시모집으로 등록해주세요)
        </div>
        <br><br>
        <div class="row" style="border: 1px solid rgba(0, 0, 0, 0.2); padding: 20px 20px 20px 20px;">
          <div class="col-md-1"></div>
          <div class="col-md-2">
            스케쥴선택<br>
            <button>정규모집</button></div>
          <div class="col-md-3">
            수업소요시간<br>
            <div class="form-inline">
              <div class="form-group">
                <select class="form-control">
                  <option>1시간</option>
                  <option>2시간</option>
                  <option>3시간</option>
                  <option>4시간</option>
                </select>
                <select class="form-control">
                  <option>10분</option>
                  <option>20분</option>
                  <option>30분</option>
                  <option>40분</option>
                </select>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            시작일과 종료일을 입력해주세요<br>
            <input type="date"> - 
            <input type="date">
          </div>
          <div class="col-md-1"></div>
          <div class="col-md-10" style="margin: 20px 0 20px 0px ; height: 350px; background-color: #f5f5f5;">여기 입력이 될거야
          </div>
          <div class="col-md-1"></div>
          <div class="col-md-1"></div>
          <div class="col-md-3">
            <button id="dateTimeSetting"type="button" class="btn btn-primary" data-toggle="modal" data-target="#regularCourse">날짜/시간 설정하기</button>
          </div>
        </div>
        <!-- 클래스스케쥴 팝업창 -->
        <div id="regularCourse"class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="gridSystemModalLabel">스케쥴등록</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              </div>
              <div class="modal-body">
                <div class="container">
                  <div class="container">
                    <h6>정규과정</h6><br>
                    <p style="font-size: 15px;">정규모집은 시작일 기준으로 사용자에게 안내됩니다.</p>
                    <div style="border: 1px solid #f5f5f5; padding: 20px;">
                      <div style="background-color: #f5f5f5; padding: 20px; height: 90px;">
                        <!-- 스케쥴정보입력 -->
                        <div class="row">
                          <div class="col-md-4" style="font-size: 14px;">강의시작시간</div>
                          <div class="col-md-3"style="font-size: 14px;">참여가능인원</div>
                          <div class="col-md-3" style="font-size: 14px;">예정횟수</div>
                          <div class="col-md-2"></div>

                          <div class="col-md-4">
                              <div class="form-inline">
                                <select class="form-group" style="margin-right: 10px; width: 90px; font-size: 14px; height: 30px; text-align: center;">
                                  <option>오전 00시</option>
                                  <option>오전 01시</option>
                                  <option>오전 02시</option>
                                  <option>오전 03시</option>
                                  <option>오전 04시</option>
                                  <option>오전 05시</option>
                                  <option>오전 06시</option>
                                </select>
                                 : 
                                <select class="form-group" style="margin-left: 10px; width: 90px; font-size: 14px; height: 30px; padding-left: 15px;" >
                                  <option>10분</option>
                                  <option>20분</option>
                                  <option>30분</option>
                                  <option>40분</option>
                                  <option>50분</option>
                                </select>
                              </div>
                          </div>
                          <div class="col-md-3" align="center">
                            <div class="form-inline">
                              <input type="number" style="margin-right: 10px; width: 60px; font-size: 14px; height: 30px; text-align: center;">
                              ~
                              <input type="number" style="margin-left: 10px; width: 60px; font-size: 14px; height: 30px; text-align: center;">
    
                            </div>
                          </div>
                          <div class="col-md-3 form-group" style="display: flex;">
                            <input type="number" class="form-inline" style="width: 50px; padding-left: 10px; margin-right: 10px; font-size: 14px;">
                            <div>회</div>
                          </div>
                          <div class="col-md-2"><button>추가</button></div>
                        </div>
                        <br>
                        <!-- /스케쥴정보입력 -->       
                      </div>
                      <p style="margin-top: 15px;" >정규모집은 시작일 기준으로 사용자에게 안내되며, 한개의 스케쥴만 등록이 가능합니다.</p>
                    </div>
                    <div style="height: 200px;">
                      <table class="table">
                        <tbody style="text-align: center;">
                          <tr style="background-color: #f5f5f5;">
                            <th>강의날짜</th>
                            <th>참여가능인원</th>
                            <th>삭제</th>
                          </tr>
                          <tr>
                            <td>2021-06-26(토) ~ 2021-07-25(수)</td>
                            <td>최소 1명 ~ 최대 4명</td>
                            <td><button>삭제</button></td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                    <div class="row">
                      <div class="col-md-10"></div>
                    </div>
                </div>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                <button type="button" class="btn btn-primary">스케줄등록</button>
              </div>
            </div>
          </div>
        </div>
        <!-- /클래스스케쥴 팝업창 -->        
        <br><br><hr><br><br>
        <h6>클래스정가<b> *</b></h6>
        <br>
            <div class="form-group">
              <input class="form-control" style="width:20%";type="number" placeholder="금액입력(원)">
            </div>
            
            <br><br><hr><br>
   
            

            <div>

            </div>
            <button onclick="movePage(1)">이전</button>
            <button onclick="movePage(3)">다음</button>
      </div>
    </div>
    <br>
    <br>
    <!-- //정규클래스등록1-->
  </div>

</body>

</html>