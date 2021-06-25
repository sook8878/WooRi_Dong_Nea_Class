<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <title>우리동네 클래스</title>
        <link
            href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
            rel="stylesheet"/>
        <link href="${ pageContext.servletContext.contextPath }/resources/admin/css/styles.css" rel="stylesheet"/>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
            crossorigin="anonymous"></script>
        
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="CustomerMain.html" style="width: 180px;">우리동네 클래스</a>
            <!-- Sidebar Toggle-->
            <button
                class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
                id="sidebarToggle"
                href="#!">
                <i class="fas fa-bars"></i>
            </button>
            <!-- Navbar-->
            <ul style="padding: 20px 0px 0px 1260px;">
                <a
                    class="sb-nav-link-icon"
                    id="navbarDropdown"
                    href="CustomerLogin.html"
                    role="button"
                    style="background-color: gray; width: 50px; height: 50px;">
                    <img src="./pic/log-in.png" style="width: 30px; height: 30px;">
                </a>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <a class="nav-link collapsed" href="CustomerMemberManagement.html" style="color: #fef0ae;">
                                회원관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="CustomerClassManagement.html">
                                클래스관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="CustomerMemberReportManagement.html">
                                신고관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="CustomerQuestionManagement.html">
                                문의내역
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="CustomerCouponManagement.html">
                                쿠폰
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="CustomerNoticeManagement.html">
                                공지사항
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="CustomerCalculateManagement.html">
                                정산 내역
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">
                            Copyright &copy; 우리동네 클래스
                        </div>
                    </div>
                </nav>
            </div>

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4" style="margin-top: 30px;">
                        <div class="card mb-4">

                            <div class="card-header" style="font-size: x-large;">
                                <i class="fas fa-table me-1"></i>
                                종료 클래스
                            </div>
                            <section class="py-5">
                                <div class="container">
                                    <div class="row mb-5">
                                        <div class="col-lg-6">
                                          <!-- PRODUCT SLIDER-->
                                          <div class="row m-sm-0">
                                            <div class="col-sm-2 p-sm-0 order-2 order-sm-1 mt-2 mt-sm-0">
                                              <div class="owl-thumbs d-flex flex-row flex-sm-column" data-slider-id="1">
                                                <div class="owl-thumb-item flex-fill mb-2 mr-2 mr-sm-0"><img class="w-100" src="img/class-sport.png" alt="..."></div>
                                                <div class="owl-thumb-item flex-fill mb-2 mr-2 mr-sm-0"><img class="w-100" src="img/class-sport2.png" alt="..."></div>
                                                <div class="owl-thumb-item flex-fill mb-2 mr-2 mr-sm-0"><img class="w-100" src="img/class-sport3.png" alt="..."></div>
                                              </div>
                                            </div>
                                            <div class="col-sm-10 order-1 order-sm-2">
                                              <div class="owl-carousel product-slider" data-slider-id="1">
                                                <a class="d-block" href="img/class-sport.png" data-lightbox="product" title="Product item 1">
                                                  <img class="img-fluid" src="img/class-sport.png" alt="...">
                                                </a>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                        <!-- PRODUCT DETAILS-->
                                        <div class="col-lg-6">
                                            <div style="font-size: xx-large; color: lightseagreen; font-weight: bold;">&nbsp;&nbsp;종료</div>
                                          <h1>리포머 하나면 가성비 홈짐 완성! 하루 30분 홈 리포머 필라테스</h1>
                                          <p class="text-muted lead">42,500 원</p>
                                          <ul class="list-unstyled small d-inline-block" style="font-size: 16px; display: flex !important; padding-top: 15px;">
                                            <div class="class-icon">
                                              <div><img src="img/calendar.png" width="20px">&nbsp;&nbsp;원데이클래스</div>
                                              <div style="padding-top:15px"><img src="img/pin.png" width="22px">&nbsp;&nbsp;00동</div>
                                            </div>
                                            <div class="class-icon" style="padding-inline: 30px;">
                                              <div><img src="img/clock.png" width="20px">&nbsp;&nbsp;2시간 소요</div>
                                              <div style="padding-top:15px"><img src="img/users.png" width="20px">&nbsp;&nbsp;최대 4명 가능</div>
                                            </div>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div style="background-color: #f5f5f5; width: 1200px; height: 200px; margin: auto;font-size: xx-large; padding: 5%;">
                                이미 종료된 클래스 입니다.
                            </div>
                            <button class="btn btn-primary" style="margin-left: 90%;">뒤로가기</button>
                              </section>
                        </div>
                    </div>
                </main>
            </div>

        </div>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
            crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/scripts.js"></script>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
            crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/assets/demo/chart-area-demo.js"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/assets/demo/chart-bar-demo.js"></script>
        <script
            src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
            crossorigin="anonymous"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/datatables-simple-demo.js"></script>
    </body>
</html>