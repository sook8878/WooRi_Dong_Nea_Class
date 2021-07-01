<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
	<%@include file="../commons/header.jsp" %>

    <style>
      .class-link {
        color: black;
      } 

      .class-link:hover {
        color:black;
      }

      .card-body{
        height: 400px;
        margin-left: 100px;

      }
    
      .justify-content-lg-end {
        justify-content: normal !important;
      }

      .form-control-lg {
        width: 450px;
      }

      .list-inline-item {
        margin-left: 50px;
      }

      .currentPage{
        font-weight: 600;
        font-size: 26px;

      }
      .form-control{
        border-radius: 5px;
      }

      .form-control {
        display: inline-block;
      }

      .btn-left{
        display: flex;
        margin: auto;
        width: 700px;
      }

      .overlay {
        position: fixed;
        top: 0;
        bottom: 0;
        left: 0;
        right: 0;
        background: rgba(0, 0, 0, 0.7);
        transition: opacity 500ms;
        visibility: hidden;
        opacity: 0;
        z-index: 900;
      }

      .overlay:target {
        visibility: visible;
        opacity: 1;
      }

      .popup {
        position: fixed;
        width: 60%;
        padding: 10px;
        max-width: 500px;
        border-radius: 10px;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background: rgba(255, 255, 255, .9);
        /* "delay" the visibility transition */
        -webkit-transition: opacity .5s, visibility 0s linear .5s;
        transition: opacity .5s, visibility 0s linear .5s;
        z-index: 1;
        height: 410px;
      }

      .popup:target {
        visibility: visible;
        opacity: 1;
        /* cancel visibility transition delay */
        -webkit-transition-delay: 0s;
        transition-delay: 0s;
      }

      .popup-close {
        position: absolute;
        padding: 10px;
        max-width: 500px;
        border-radius: 10px;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background: rgba(255, 255, 255, .9);
      }

      .popup .close {
        position: absolute;
        right: 5px;
        top: 5px;
        padding: 5px;
        color: #000;
        transition: color .3s;
        font-size: 2em;
        line-height: .6em;
        font-weight: bold;
      }

      .popup .close:hover {
        color: #6eceda;
      }

      .withdrawbtn{
        margin-left: 200px;
        margin-top: 10px;
      }
      i{
        font-family: "Font Awesome 5 Free" !important;
      }

    *{font-family:'Cafe24SsurroundAir' !important;}
    </style>
  </head>
  <body>
    <div class="page-holder">
      <!-- navbar-->
      <header class="header bg-white">
        <div class="container px-0 px-lg-3">
          <nav class="navbar navbar-expand-lg navbar-light py-3 px-lg-0"><a class="navbar-brand" href="${ pageContext.servletContext.contextPath }/user/mypage/userLoginSuccessMain"><span class=" text-uppercase text-dark" style="font-size: 32px; font-family: Cafe24SsurroundAir;"><img src="${pageContext.servletContext.contextPath }/resources/user/img/favicon.png" width="33px" height="33px">&nbsp;우리 동네 클래스</span></a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" id="pagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">클래스</a>
                  <div class="dropdown-menu mt-3" aria-labelledby="pagesDropdown">
                    <a class="dropdown-item border-0 transition-link" href="class_all.html">전체보기</a>
                    <a class="dropdown-item border-0 transition-link" href="class_sport.html">스포츠</a>
                    <a class="dropdown-item border-0 transition-link" href="class_beauty.html">뷰티</a>
                    <a class="dropdown-item border-0 transition-link" href="class_art.html">미술 · 공예 · 공연전시</a>
                    <a class="dropdown-item border-0 transition-link" href="class_cook.html">요리 · 베이킹</a>
                    <a class="dropdown-item border-0 transition-link" href="class_it.html">컴퓨터 · IT</a>
                    <a class="dropdown-item border-0 transition-link" href="class_language.html">언어 · 스피치</a>
                    <a class="dropdown-item border-0 transition-link" href="class_revenue.html">재태크 · 창업</a>
                  </div>
                </li>
                <li class="nav-item"><a class="nav-link" href="serviceCenter.html"> <i class="fas  mr-1 text-gray"></i>고객센터</a></li>
              </ul>
              <ul class="navbar-nav ml-auto">               
                <li class="nav-item"><a class="nav-link" href="likeClassList.html"> <i class="far fa-heart mr-1"></i><small class="text-gray"></small></a></li>
                <li class="nav-item"><a class="nav-link text-warning" href="mypageMain.html"> <i class="fas fa-user-alt mr-1 text-warning hover-btn"></i></a></li>
                <li class="nav-item"><a class="nav-link" href="login.html">로그인</a></li>
              </ul>
            </div>
          </nav>
        </div>
      </header>
      <div class="container">
        <!-- HERO SECTION-->
        <section class="py-5 bg-light">
          <div class="container">
            <div class="row px-4 px-lg-5 py-lg-4 align-items-center">
              <div class="col-lg-6">
                <h1 class="h2 mb-0">My Page</h1>
                <p class="text-muted small text-uppercase mb-2"></p>
              </div>
            </div>
          </div>
        </section>
        <!-- 세부 메뉴 -->
        <section class="py-5">
          <div class="container p-0">
            <div class="row">
              <div class="col-lg-3 order-2 order-lg-1">
                  <div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/mypageMain">내 정보</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/scheduledClassList">참여 예정 클래스</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/participatingClassList">참여 중인 클래스</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/complateClassList">참여 완료 클래스</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/coupon">내 쿠폰</a></strong></div>
              </div>
              <!-- BILLING ADDRESS-->
              <div class="col-lg-9 order-1 order-lg-2 mb-5 mb-lg-0">
                <div class="col-lg-6">
                  <ul class="list-inline d-flex align-items-center justify-content-lg-end mb-0">
                    <li class="list-inline-item">
                      <div class="col-lg-8 form-group">
                        <label class="text-small text-uppercase" for="firstName">이름 </label>
                        <input class="form-control form-control-lg" id="firstName" type="text" value="${ requestScope.userInfoDTO.userName }" disabled>
                      </div>
                      <div class="col-lg-8 form-group">
                        <label class="text-small" for="email">아이디</label>
                        <input class="form-control form-control-lg" id="email" type="email" value="${ requestScope.userInfoDTO.userId }" disabled  >
                      </div>
                      <div class="col-lg-8 form-group">
                        <label class="text-small text-uppercase" for="phone">휴대폰 번호</label>
                        <input class="form-control form-control-lg" id="phone" type="tel"  value="${ requestScope.userInfoDTO.phone }" disabled>
                      </div>
                      <div class="col-lg-8 form-group">
                        <form>
                          <label class="text-small text-uppercase" for="company">변경할 휴대폰  번호</label>
                          <div class="btn-left">
                            <input class="form-control form-control-lg" id="company" type="text" placeholder="변경할 휴대전화 번호를 입력해 주세요">
                            &nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-dark"style="float: right;">변경</button>
                          </div>
                        </form>
                      </div>
                      <div class="col-lg-8 form-group">
                        <label class="text-small text-uppercase" for="address">비밀번호 변경</label>
                        <input class="form-control form-control-lg" id="address" type="text" placeholder="변경할 비밀번호">
                      </div>
                      <div class="col-lg-8 form-group">
                        <form>
                          <label class="text-small text-uppercase" for="address">비밀번호 확인</label>
                          <div class="btn-left">
                            <input class="form-control form-control-lg" id="addressalt" type="text" placeholder="변경할 비밀번호">
                            &nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-dark"style="float: right;">변경</button>
                          </div>
                        </form>
                      </div>
                      <br><br><br>
                      <button type="submit" class="btn btn-dark" style="margin-left:195px; background-color:#e9ecef; border-color: #e9ecef;"  onclick="location.href='#pop01'">탈퇴하기</button>

                      <!-- 회원탈퇴 팝업창 -->
                      <div id="pop01" class="overlay">
                        <div class="popup">
                          <a href="#none" class="close">&times;</a>
                            <p style="font-size: 20px; color: red; padding-bottom: 10px;">회원탈퇴</p>
              
                            <div class="cont-step cont-step_02" id="contStep02" style="display: block;">
                              <div class="cont-step_preface">
                                <h3>왜 떠나시는지 이유가 있을까요? </h3>
                              </div>
                              <!-- 탈퇴이유 -->
                              <ul class="reason-list" style="text-align: left;">
                                <li>
                                  <input id="reasonRdo0" type="radio" name="radios" value="UN_USE_FREQUENTLY">
                                  <label for="reasonRdo0">사용을 잘 안하게 돼요</label>
                                </li>
                                <li>
                                  <input id="reasonRdo1" type="radio" name="radios" value="HAVE_NO_LIKED_HOTEL">
                                  <label for="reasonRdo1">예약하고 싶은 숙소가 없어요</label>
                                </li>
                                <li>
                                  <input id="reasonRdo2" type="radio" name="radios" value="DIFFICULT_TO_USE">
                                  <label for="reasonRdo2">예약, 취소, 혜택받기 등 사용이 어려워요</label>
                                </li>
                                <li>
                                  <input id="reasonRdo3" type="radio" name="radios" value="POINT_COUPON_TOO_LITTLE">
                                  <label for="reasonRdo3">혜택(쿠폰, 포인트)이 너무 적어요</label>
                                </li>
                                <li>
                                  <input id="reasonRdo4" type="radio" name="radios" value="INFO_TO_DELETE">
                                  <label for="reasonRdo4">개인정보 보호를 위해 삭제할 정보가 있어요</label>
                                </li>
                                <li>
                                  <input id="reasonRdo5" type="radio" name="radios" value="EXISTING_ID">
                                  <label for="reasonRdo5">다른 계정이 있어요</label>
                                </li>
                                <li>
                                  <input id="reasonRdo6" type="radio" name="radios" value="OTHER" checked>
                                  <label for="reasonRdo6">기타</label>
                                  <div class="reason-innder-box reason-innder-box6"  style="margin-bottom: 10px;">
                                    <!-- <textarea class="inner-textarea" id="reasonTextarea6" name="innerTextarea" maxlength="80" placeholder="(선택사항) 서비스 이용 중 아쉬운 점에 대해 알려주세요. 고객님의 소리에 귀 기울일게요. 80자 이내"></textarea> -->
                                    <input name="reason" style="width:100%;float: left;" placeholder="사유를 입력해주세요">
                                  </div>
                                </li>
                                </ul>
                              <div class="password-wrap">
                                <div class="button-wrap"><button class="btn_submit disabled withdrawbtn" onclick=withdraw();>탈퇴하기</button></div>
                              </div>
                            </div>
                            <script>
                            $(document).ready(function(){
               
                              // 라디오버튼 클릭시 이벤트 발생
                              $("input:radio[name=radios]").click(function(){
                             
                                if($("input[name=radios]:checked").val() == "OTHER"){
                                  $("input:text[name=reason]").attr("disabled",false);
                                  // radio 버튼의 value 값이 OTHER이라면 활성화
                             
                                }else {
                                    $("input:text[name=reason]").attr("disabled",true);
                                  // 그 외에는 비활성화
                                }
                              });
                            });

                            function withdraw(){
                              alert("탈퇴 되었습니다")
                              location.href="login.html";
                            }
                          </script>
                            
              
              
                        </div>
                      </div>

                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
      <br>
      	<%@include file="../commons/footer.jsp" %>
 </div>
  </body>
</html>