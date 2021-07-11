<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <title>우리동네 클래스</title>
    	<link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/user/img/favicon.png">
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet"/>
        <link href="${ pageContext.servletContext.contextPath }/resources/admin/css/styles.css" rel="stylesheet"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        
           	<!-- header -->
		<%@ include file="commons/header.jsp" %>
		
        <div id="layoutSidenav">
        
        	<!-- sideBar & footer -->
			<%@ include file="commons/sideBarAndFooter.jsp" %>


            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4" style="margin-top: 30px;">
                        <div class="card mb-4">

                            <div class="card-header" style="font-size: x-large;">
                                <i class="fas fa-table me-1"></i>
                                클래스 상세 페이지
                            </div>
                            <section class="py-5">
                              <div class="container">
                                <div class="">
									<div class="col-lg-6">
										<!-- PRODUCT SLIDER-->
												<div class=""
													data-slider-id="1" style="display:flex;">
													<c:forEach var="classPic" items="${ classPic }">
													<c:set var="i" value="${i+1}"></c:set>
														<div class="" >
															<img class="" src="${ pageContext.servletContext.contextPath }/${ classPic.titlePic }" alt="..." style="width: 450px; height:300px;">
															<input type="hidden" name="titlePic${i}" value="${ classPic.titlePic }"/>
														</div>
													</c:forEach>
												</div>
									</div>
                                  <!-- PRODUCT DETAILS-->
                                  <div class="" >
                                    <h1>${classDetail.title }</h1><br>
                                    <p class="text-muted lead">강의 카테고리 :                                         
                                        <c:choose>
                                        	<c:when test="${classDetail.categoryNo  eq '1'}">스포츠</c:when>
                                        	<c:when test="${classDetail.categoryNo  eq '2'}">요리/베이킹</c:when>
                                        	<c:when test="${classDetail.categoryNo  eq '3'}">미술/공예/공연전시</c:when>
                                        	<c:when test="${classDetail.categoryNo  eq '4'}">뷰티</c:when>
                                        	<c:when test="${classDetail.categoryNo  eq '5'}">컴퓨터/IT</c:when>
                                        	<c:when test="${classDetail.categoryNo  eq '6'}">언어/스피치</c:when>
                                        	<c:otherwise>재테크/창업</c:otherwise>
                                        </c:choose> </p>
                                    <p class="text-muted lead">신청 날짜 : ${ classDetail.dateAplct } </p>
                                    <p class="text-muted lead">강의 시작 날짜 : ${ classDetail.startDate }  </p>
                                    <p class="text-muted lead">강의 마지막 날짜 : ${ classDetail.endDate }  </p>
                                    <p class="text-muted lead">클래스 가격 : <fmt:formatNumber value="${ classDetail.price }" pattern="#,###"/> 원</p><br>
                                      <div style="display:flex;">
                                        <div style="margin-left:50px"><img src="${ pageContext.servletContext.contextPath }/resources/user/img/calendar.png" id="logoutIcon1">&nbsp;&nbsp;
                                        <c:choose>
                                        	<c:when test="${classDetail.clsType  eq 'O'}">원데이 클래스</c:when>
                                        	<c:otherwise>정규 클래스</c:otherwise>
                                        </c:choose>
                                        </div>
                                        <div style="margin-left:50px"><img src="${ pageContext.servletContext.contextPath }/resources/user/img/pin.png" id="logoutIcon1">&nbsp;&nbsp;${classDetail.address }</div>
                                        <div style="margin-left:50px"><img src="${ pageContext.servletContext.contextPath }/resources/user/img/clock.png" id="logoutIcon1">&nbsp;&nbsp;${classDetail.time }</div>
                                        <div style="margin-left:50px"><img src="${ pageContext.servletContext.contextPath }/resources/user/img/users.png" id="logoutIcon1">&nbsp;&nbsp;최대 4명 가능</div>
                                      </div>
                                  </div>
                                </div>
                                <button class="btn btn-primary" style="margin-left: 90%;" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/selectClassBycategory?currentMenu=class&ct=accept'">뒤로 가기</button>
                                <br><br>
                                <!-- 상세보기 탭 -->
                                <div class="tab-content mb-5" id="myTabContent">
                                  <div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">
                                    <div class="p-4 p-lg-5 bg-white" style="text-align: center;">
                                      <ul class="list-unstyled small d-inline-block" style="width: 900px;margin-left: 0px;">
                                        <div style="text-align:left">
						                    <h4> <b style="font-size: 13px; ">●</b> 간단소개글</h4>
						                    <pre style="font-size: 16px;">${ classDetail.simpleIntro }</pre>
						                    
						                    <hr style="margin: 15px 0px 15px 0px">
						                    <h4> <b style="font-size: 13px;">●</b> 클래스소개</h4>
						                      
						                      <pre style="font-size: 16px;">
${ classDetail.intro }
                                          </pre>
                                          <br><br>
                                          <hr><br>
                                          <!-- 완성작 사진 -->
                                          <h3 style="padding-bottom: 20px;"> <b style="font-size: 13px; ">●</b> 클래스소개</h3><br>
                                          <div style="width: 550px; display: flex; margin: auto; text-align: center; justify-content: space-between; font-size: 16px;">
                                            <c:forEach var="piece" items="${ classPiece }">
	                                            <div><img src="${ pageContext.servletContext.contextPath }/resources/upload/${ piece.piecePic}" alt="완성작" style="width: 300px; height:270px;"><br>${ piece.pieceTitle }</div>
	                                        </c:forEach>
                                          </div>
                                          <br><br><br><hr>
                                          <!-- 커리큘럼 -->
                                          <div>
					                        <br><h4><b style="font-size: 13px; ">●</b> 커리큘럼</h4><br><br>
					                        <c:forEach var="curriculum" items="${ curriculum }">
					                        <div style="display: flex;">
					                          <img src="${pageContext.servletContext.contextPath }/resources/teacher/img/gradation10.png" width="25px" height="25px">
					                          <div style="font-size: large;">${ curriculum.curriStep } 단계 : ${ curriculum.curriTitle }</div>
					                        </div>
					                        <div style="margin-left: 30px;">
					                          <p style="font-size: 20px; font-weight: lighter;">${ curriculum.curriContent }.</p>
					                        </div>
					                        <br><br>
                                            </c:forEach>
                                          </div>
                                          <br><br>
                                          <hr>
                                          <br>
                                          <!-- 추가 제공사항 및 유의사항 -->
                                          <div style="font-size: large;">
                                            <h3>※ 추가 제공사항 및 유의사항</h3>
                                            <br>
<!--                                               1. 주차는 불가하며 근처 공영 주차장 이용 부탁드립니다.<br>
                                              2. 여러분들과 함께 하는 수업으로 시작을 꼭 지켜주세요.<br>
                                              3. 10분전 입실 부탁드립니다.<br>
                                              4. 최소인원 1인 최대 6인 입니다.<br> -->
                                                <c:forEach items="${classDetail.addSup}" var="item" varStatus="status">
						                          ${ status.count }. ${ item }<br>
						                        </c:forEach>
                                            <br><br>
                                          </div>
                                          <hr>
                                          <br>
                                          <h3>※ 편의사항</h3>
                                          <br><br>
                                          <div style="display: flex; width: 550px;">
                                            <img src="../관리자/img/stayhome (1).png" alt="home" width="23px" height="23px;">
                                            <div style="font-size: large;">&nbsp;&nbsp;&nbsp;아늑한 공방에서 수업합니다.</div>
                                          </div>
                                          <br>
                                          <div style="display: flex; width: 550px;">
                                            <img src="../관리자/img/wifi.png" alt="home" width="23px" height="23px">
                                            <div style="font-size: large;">&nbsp;&nbsp;&nbsp;와이파이 가능합니다.</div>
                                          </div>
                                          <br>
                                          <div style="display: flex; width: 550px;">
                                            <img src="../관리자/img/no-coffee.png" alt="home" width="23px" height="23px">
                                            <div style="font-size: large;">&nbsp;&nbsp;&nbsp;커피/음료는 별도 구매하셔야합니다.</div>
                                          </div>
                                          <!-- 지도 보기 -->
                                          <div style="display: block; text-align: center;">
                                            <br><br>
                                            <img src="../관리자/img/화면 캡처 2021-06-23 011233.png">
                                          </div>
                                        </div>
                                      </ul>
                                      <br><br><br><br><br>
                                      <div class="row">
                                      <div class="col-md-2" style="height: 100px;"></div>
                                      <div class="col-md-2" style=" height: 100px;"></div>
                                    </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                                 
                              </section>
                        </div>
                    </div>
                </main>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/assets/demo/chart-area-demo.js"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/datatables-simple-demo.js"></script>
    </body>
</html>