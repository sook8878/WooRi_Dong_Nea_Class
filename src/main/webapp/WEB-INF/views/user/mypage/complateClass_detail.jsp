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
        justify-content: center !important;
      }

      .form-control-lg {
        width: 450px;
      }

      .currentPage{
        font-weight: 600;
        font-size: 26px;

      }
      .form-control{
        border-radius: 5px;
      }

      .img-fluid{
        height: 180px;
        width: 250px;
        border-radius: 5px;
        background-color: #ffe66a;
      }
      i{
        font-family: "Font Awesome 5 Free" !important;
      }

      .w-100{
        transition: all 0.2s linear;
      }

   	  *{font-family:'Cafe24SsurroundAir' !important;}
   	  
   	  .non{
			opacity:0;
			width: 0px;
		}
		.star-size{
			width:25px;
			height:25px;
			cursor:pointer;
		}
		.star-count{
			width: 400px;
		    margin-left: 100px;
		    padding: 10px;
		    margin-bottom: 10px;
		}
		.file-upload{
		/* 	content:url("${pageContext.servletContext.contextPath }/resources/user/img/picture.png");*/	
			width:800px;
			margin-left: 55%;
		    margin-bottom: 10px;
		    font-size: 16px;
		}
  </style>
  </head>
  <body>
  	<div class="page-holder">
      <!-- navbar-->
      <header class="header bg-white">
        <div class="container px-0 px-lg-3">
          <nav class="navbar navbar-expand-lg navbar-light py-3 px-lg-0"><a class="navbar-brand" href="${ pageContext.servletContext.contextPath }/"><span class=" text-uppercase text-dark" style="font-size: 32px; font-family: Cafe24SsurroundAir;"><img src="${pageContext.servletContext.contextPath }/resources/user/img/favicon.png" width="33px" height="33px">&nbsp;우리 동네 클래스</span></a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" id="pagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">클래스</a>
                  <div class="dropdown-menu mt-3" aria-labelledby="pagesDropdown">
                    <a class="dropdown-item border-0 transition-link" href="${ pageContext.servletContext.contextPath }/user/category/all">전체보기</a>
                    <a class="dropdown-item border-0 transition-link" href="${ pageContext.servletContext.contextPath }/user/category/sports">스포츠</a>
                    <a class="dropdown-item border-0 transition-link" href="${ pageContext.servletContext.contextPath }/user/category/beauty">뷰티</a>
                    <a class="dropdown-item border-0 transition-link" href="${ pageContext.servletContext.contextPath }/user/category/art">미술 · 공예 · 공연전시</a>
                    <a class="dropdown-item border-0 transition-link" href="${ pageContext.servletContext.contextPath }/user/category/cook">요리 · 베이킹</a>
                    <a class="dropdown-item border-0 transition-link" href="${ pageContext.servletContext.contextPath }/user/category/computer">컴퓨터 · IT</a>
                    <a class="dropdown-item border-0 transition-link" href="${ pageContext.servletContext.contextPath }/user/category/language">언어 · 스피치</a>
                    <a class="dropdown-item border-0 transition-link" href="${ pageContext.servletContext.contextPath }/user/category/revenu">재태크 · 창업</a>
                  </div>
                </li>
                <li class="nav-item"><a class="nav-link" href="${ pageContext.servletContext.contextPath }/user/serviceCenter/notice"> <i class="fas mr-1 text-gray"></i>고객센터</a></li>
              </ul>
              <ul class="navbar-nav ml-auto">               
                <li class="nav-item"><a class="nav-link" href="${ pageContext.servletContext.contextPath }/user/likeClass"> <i class="far fa-heart mr-1 icon1"></i><small class="text-gray"></small></a></li>
                <li class="nav-item"><a class="nav-link" href="${ pageContext.servletContext.contextPath }/user/mypage/mypageMain"> <i class="fas fa-user-alt mr-1 text-gray hover-btn icon1" ></i></a></li>
                <li class="nav-item"><a class="nav-link" href="${ pageContext.servletContext.contextPath }/user/login">로그인</a></li>
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
              </div>
              <div class="col-lg-6 text-lg-right">
                <nav aria-label="">
                  <ol class=" justify-content-lg-end mb-0 px-0">
                   <a href="mypageScheduledClass.html" style="color: black; font-weight: 600;">돌아가기</a>
                  </ol>
                </nav>
              </div>
            </div>
          </div>
        </section>

        <!-- 세부 메뉴 -->
        <section class="py-5">
          <div class="container p-0">
            <div class="row">
              <div class="col-lg-3 order-2 order-lg-1">
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/mypageMain">내 정보</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/scheduledClassList">참여 예정 클래스</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/participatingClassList">참여 중인 클래스</a></strong></div>
                  <div class="py-2 px-4 bg-dark text-white mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/complateClassList">참여 완료 클래스</a></strong></div>
                  <div class="py-2 px-4 bg-light mb-3"><strong class="small text-uppercase font-weight-bold"><a class="class-link" href="${ pageContext.servletContext.contextPath }/user/mypage/coupon">내 쿠폰</a></strong></div>
              </div>
              <div class="col-lg-9 order-1 order-lg-2 mb-5 mb-lg-0">
                <div class="row">
                  <div class="col-xl-10 col-lg-4 col-sm-6" style="margin-left: 30px; ">
	                  <div class="row" style="height: 200px;">
	                  	<img class="w-100" src="${pageContext.servletContext.contextPath }/${complateDetailUserClassDTO.titlePic}"  alt="..." style="width: 200px !important; height: 150px !important; margin-right: 30px; border-radius: 2px;">
		                <ul class="list-inline mb-2">
		                	<li class="list-inline-item m-0">
		                        <i class="fas fa-caret-right small text-dark" style="display: flex; margin-left: 3px; ">
		                          <p style="margin-left: 10px; margin-top: 2px;"> 강의명</p>
		                    	</i>
		                	</li> 
		                	<h4><a href="detail.html" style="color: black;">${ requestScope.complateDetailUserClassDTO.title }</a></h4>
		                	<br>  
		                	<li class="list-inline-item m-0">
		                    	<i class="fas fa-caret-right small text-dark" style="display: flex; margin-left: 3px; ">
		                          <p style="margin-left: 10px; margin-top: 2px;"> 강사명</p>
		                        </i>
		                 	</li> : ${ requestScope.complateDetailUserClassDTO.teName } 강사님
		                 	<br>
		              	</ul>
		              </div>

              	    <!-- PRODUCT-->

                    <div style="text-align: left; margin-top: -30px;">
                    <hr>
                    <c:if test="${ requestScope.complateDetailUserClassDTO.clsType eq 'O' }">
                    <li>강의 날짜 : ${ requestScope.complateDetailUserClassDTO.scheduleDate }</li>
                    </c:if>
                    <c:if test="${ requestScope.complateDetailUserClassDTO.clsType eq 'R' }">
                    <li>강의 날짜: ${ requestScope.complateDetailUserClassDTO.startDate } ~ ${ requestScope.complateDetailUserClassDTO.endDate }</li>
                    </c:if>
                    <hr>
                    <li>강의 진행 시간 : ${ requestScope.complateDetailUserClassDTO.scheduleStart }</li>
                    <hr>
                    <li>강의 소요 시간 : ${ requestScope.complateDetailUserClassDTO.time }</li>
                    <hr>
                    <li>결제 날짜 : ${ requestScope.complateDetailUserClassDTO.clsAplDate }</li>
                    <hr>
                    <li>신청 인원 : ${ requestScope.complateDetailUserClassDTO.ppl } 명 </li>
                    <hr>
                    <c:if test="${ requestScope.complateDetailUserClassDTO.payStatus eq '완료' }">
                    <li>결제 금액 : <fmt:formatNumber value="${ requestScope.complateDetailUserClassDTO.payPrice }" pattern="#,###"/></li>
                    </c:if>
                    <c:if test="${ requestScope.complateDetailUserClassDTO.payStatus eq '취소' }">
                    <li>결제 금액 : <fmt:formatNumber value="${ requestScope.complateDetailUserClassDTO.payPrice }" pattern="#,###"/></li>                    
                    <hr>
                    </c:if>
                    <c:if test="${ requestScope.complateDetailUserClassDTO.payStatus eq '취소' }">
                    	<c:if test="${ requestScope.complateDetailUserClassDTO.refundStatus eq 'Y' }">
                  		  <li>환불 금액 : <fmt:formatNumber value="${ requestScope.complateDetailUserClassDTO.refundAmount }" pattern="#,###"/> 원  </li>                                        	
                    	</c:if>
                    	<c:if test="${ empty requestScope.complateDetailUserClassDTO.refundStatus eq 'N' }">
                  		  <li>환불 금액 :  [환불 승인 대기중 입니다.] </li>                                        	
                    	</c:if>
                    <hr>
                    </c:if>
                    <c:if test="${ requestScope.complateDetailUserClassDTO.payStatus eq '취소' }">
                    	<c:if test="${ requestScope.complateDetailUserClassDTO.refundStatus eq 'N' }">
                    		<li>환불 상태 : [환불 승인 대기중 입니다.]</li>                    
                    <hr>
                    	</c:if>
                    	<c:if test="${ requestScope.complateDetailUserClassDTO.refundStatus eq 'Y' }">
                    		<li>환불 상태 : [환불 승인]</li>                    
                    <hr>
                    	</c:if>
                    </c:if>
                    </div>
                    <br>
              	
                    <div style="display: flex; justify-content: space-evenly; width: 710px;">
                      <div style="display: inline-flex;">
                        <form action="${ pageContext.servletContext.contextPath }/user/userReport" style="display: flex;">
                          <button class="btn btn-dark" type="submit" style="display: flex;">클래스 신고하기</button>
                          <input type="hidden" name="titlePic" value="${complateDetailUserClassDTO.titlePic}">
                          <input type="hidden" name="title" value="${ requestScope.complateDetailUserClassDTO.title }">
                          <input type="hidden" name="ppl" value="${ requestScope.complateDetailUserClassDTO.ppl }">
                          <c:choose>
                          	<c:when test="${ !empty requestScope.complateDetailUserClassDTO.scheduleDate }">
                          		<input type="hidden" name="scheduleDate" value="${ requestScope.complateDetailUserClassDTO.scheduleDate }">
                          	</c:when>
                          </c:choose>
                          <input type="hidden" name="scheduleStart" value="${ requestScope.complateDetailUserClassDTO.scheduleStart }">
                          <input type="hidden" name="time" value="${ requestScope.complateDetailUserClassDTO.time }">
                          <input type="hidden" name="teNo" value="${ requestScope.complateDetailUserClassDTO.teNo }">
                          <input type="hidden" name="teName" value="${ requestScope.complateDetailUserClassDTO.teName }">
                          <input type="hidden" name="clsType" value="${ requestScope.complateDetailUserClassDTO.clsType }">
                          <input type="hidden" name="startDate" value="${ requestScope.complateDetailUserClassDTO.startDate }">
                          <input type="hidden" name="endDate" value="${ requestScope.complateDetailUserClassDTO.endDate }">
                          
                        </form>
                      </div>
	                  <c:if test="${ requestScope.complateDetailUserClassDTO.payStatus eq '완료' }">
	                    <div style="display: inline-flex;">
	                        <form action="${ pageContext.servletContext.contextPath }/user/certificate/user" style="display: flex; width: 131px; font-size: 15px;" method="post">
	                          	<button class="btn btn-dark" type="submit" style="display: flex;">수료증 보기</button>
			                      <input type="hidden" name="titlePic" value="${complateDetailUserClassDTO.titlePic}">
		                          <input type="hidden" name="title" value="${ requestScope.complateDetailUserClassDTO.title }">
		                          <input type="hidden" name="ppl" value="${ requestScope.complateDetailUserClassDTO.ppl }">
		                          <c:choose>
		                          	<c:when test="${ !empty requestScope.complateDetailUserClassDTO.scheduleDate }">
		                          		<input type="hidden" name="scheduleDate" value="${ requestScope.complateDetailUserClassDTO.scheduleDate }">
		                          	</c:when>
		                          </c:choose>
		                          <input type="hidden" name="scheduleStart" value="${ requestScope.complateDetailUserClassDTO.scheduleStart }">
		                          <input type="hidden" name="time" value="${ requestScope.complateDetailUserClassDTO.time }">
		                          <input type="hidden" name="teNo" value="${ requestScope.complateDetailUserClassDTO.teNo }">
		                          <input type="hidden" name="teName" value="${ requestScope.complateDetailUserClassDTO.teName }">
		                          <input type="hidden" name="clsType" value="${ requestScope.complateDetailUserClassDTO.clsType }">
		                          <input type="hidden" name="startDate" value="${ requestScope.complateDetailUserClassDTO.startDate }">
		                          <input type="hidden" name="endDate" value="${ requestScope.complateDetailUserClassDTO.endDate }">
	                        </form>
	                    </div>           
	                    <c:if test="${ requestScope.reviewYn eq 0 }">      
	                     	<div style="display: inline-flex;">
								<button onclick="reviewWrite1();" type="button" class="btn btn-dark" style="width: 112px; font-size: 15px;">리뷰 작성</button>
							</div>
						</c:if>
						<c:if test="${ requestScope.reviewYn ne 0 }">
							<div style="display: inline-flex;">
								<button type="button" class="btn btn-dark" style="width: 145px; font-size: 15px; background-color: #e9ecef; border-color: #e9ecef;">리뷰 작성 완료</button>
							</div>
						</c:if>
					  </c:if>
					</div>
					</div>
					</div>
						<div id="reviewWrite" style="width: 200px; height: 180px; display: none; margin-left: 200px; margin-bottom: 40px; margin-top: 65px;">
							<form action="${ pageContext.servletContext.contextPath }/user/mypage/ComplateClassReview/${ requestScope.complateDetailUserClassDTO.aplNo }" method="post">
								<div class="file-upload">
									▷ 수강 사진을 첨부해주세요. (1장 필수)&nbsp;:&nbsp;&nbsp;<input name="reviewPic" type="file">
								</div>
								<div class="star-count">
									▷ 클래스는 어떠셨나요?&nbsp;:&nbsp;
									<label class="list-inline-item m-0">
									  	<input type="radio" class="non" name="reviewScore" value="1" onclick="starScore1()">
									  	<img id="star-img1" class="star-size" src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png">
									</label>
									<label class="list-inline-item m-0">
									  	<input type="radio" class="non" name="reviewScore" value="2" onclick="starScore2()">
									  	<img id="star-img2" class="star-size" src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png">
									</label>
									<label class="list-inline-item m-0">
									  	<input type="radio" class="non" name="reviewScore" value="3" onclick="starScore3()">
									  	<img id="star-img3" class="star-size" src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png">
									</label>
									<label class="list-inline-item m-0">
									  	<input type="radio" class="non" name="reviewScore" value="4" onclick="starScore4()">
									  	<img id="star-img4" class="star-size" src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png">
									</label>
									<label class="list-inline-item m-0">
									  	<input type="radio" class="non" name="reviewScore" value="5" onclick="starScore5()">
									  	<img id="star-img5" class="star-size" src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png">
									</label>
								</div>
								<script>
									function starScore1(){
										document.getElementById("star-img1").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
										document.getElementById("star-img2").src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png";
										document.getElementById("star-img3").src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png";
										document.getElementById("star-img4").src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png";
										document.getElementById("star-img5").src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png";
									}
									function starScore2(){
										document.getElementById("star-img1").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
										document.getElementById("star-img2").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
										document.getElementById("star-img3").src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png";
										document.getElementById("star-img4").src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png";
										document.getElementById("star-img5").src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png";
									}
									function starScore3(){
										document.getElementById("star-img1").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
										document.getElementById("star-img2").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
										document.getElementById("star-img3").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
										document.getElementById("star-img4").src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png";
										document.getElementById("star-img5").src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png";
									}
									function starScore4(){
										document.getElementById("star-img1").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
										document.getElementById("star-img2").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
										document.getElementById("star-img3").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
										document.getElementById("star-img4").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
										document.getElementById("star-img5").src="${pageContext.servletContext.contextPath }/resources/user/img/emptyStar.png";
									}
									function starScore5(){
										document.getElementById("star-img1").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
										document.getElementById("star-img2").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
										document.getElementById("star-img3").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
										document.getElementById("star-img4").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
										document.getElementById("star-img5").src="${pageContext.servletContext.contextPath }/resources/user/img/star.png";
									}
								</script>
								<textarea name="reviewContent"class="feedbackArea" style="font-size: 15px; border-color: lightgray; width: 605px;" placeholder="리뷰를 작성해 주세요."></textarea>
								<button class="btn btn-dark" type="submit" style="display: flex; margin-top: -85px; margin-left: 725px; font-size: 15px; width: 80px;">작성</button>
							</form>
							<!-- 리뷰 작성 눌렀을 시-->
							<script>
								function reviewWrite1() {
									if (document.getElementById("reviewWrite").style.display == "none") {
										document.getElementById("reviewWrite").style.display = "block";
									} else if (document
											.getElementById("reviewWrite").style.display == "block") {
										document.getElementById("reviewWrite").style.display = "none";
									}
								}
							</script>
						</div>
					</div>			
               		<br><br>
            	</div>
        	</section>
    	</div>
    	<%@include file="../commons/footer.jsp" %>
	</body>
</html>