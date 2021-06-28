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
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Libre+Franklin:wght@300;400;700&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Martel+Sans:wght@300;400;800&amp;display=swap">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/resources/teacher/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/teacher/img/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->

  <style>
     html {

		position: relative;
		margin: 0;
		background: white;
	}
    .panel-default {
      padding-left: 30px;
      padding-top: 20px;
      padding-bottom: 20px;
    }

    a {
      color: black;
    }

    .btn {
      border-radius: 5px !important;
      background-color: #fef0ae !important;
      border-color: #fef0ae !important;
    }
    
    .btn-primary:hover {
      background-color: #fef0ae !important;
      border-color: #fef0ae !important;
    }

  </style>

  
  </head>
  
  <body>
     <!-- header -->
    <div class="page-holder">
      <header class="header bg-white" style="padding-top: 80px; padding-bottom: 30px;">
        <div class="container px-0 px-lg-3">
          <nav class="navbar navbar-expand-lg navbar-light py-3 px-lg-0"><a class="navbar-brand" href="index.html"><span class="font-weight-bold text-uppercase text-dark"><h1>우리동네 클래스</h1></span></a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                </li>
                <li class="nav-item">
                </li>
                <li class="nav-item"><a class="nav-link" href="t_main.html"><h3>강사 페이지</h3></a>
                </li>
                <li class="nav-item dropdown">
                </li>
              </ul>
              <ul class="navbar-nav ml-auto">               
                <li class="nav-item"></li>
                <li class="nav-item"><a class="nav-link" href="#"> <i class="fas fa-user-alt mr-1 text-gray"></i>회원가입</a></li>
                <li class="nav-item"><a class="nav-link" href="#"> <i class="fas fa-user-alt mr-1 text-gray"></i>로그인</a></li>
              </ul>
            </div>
          </nav>
        </div>
      </header>

      <div class="container">

        <!-- sidebar-->
        <div class="col-lg-2 order-1 order-lg-1" style="float: left;">
          <h5 class="text-uppercase mb-4"><a class="nav-link" href="#" style="color: black; text-align: center;"><h2>홈</h1></a></h5>
          <div class="py-2 px-4 bg-light mb-3"><h5>클래스 관리</h5></div>
          <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal">
            <li class="mb-2"><a class="reset-anchor" href="t_classManagement.html">클래스 관리</a></li>
            <li class="mb-2"style="padding-bottom: 50px;"><a class="reset-anchor" href="#"></a></li>
          </ul>
          <div class="py-2 px-4 bg-light mb-3"><h5>매출/정산</h5></div>
          <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal">
            <li class="mb-2"><a class="reset-anchor" href="t_balanceList.html">정산내역 관리</a></li>
            <li class="mb-2"style="padding-bottom: 50px;"><a class="reset-anchor" href="#"></a></li>
          </ul>
          <div class="py-2 px-4 bg-light mb-3"><h5>문의하기</h5></div>
          <ul class="list-unstyled small text-muted pl-lg-4 font-weight-normal mb-5">
            <li class="mb-2"><a class="reset-anchor" href="t_Inquiry.html">관리자 문의</a></li>
            <li class="mb-2"><a class="reset-anchor" href="t_inquiryList.html">문의내역 관리</a></li>
            <li class="mb-2"><a class="reset-anchor" href="t_FAQ.html">자주 묻는 질문</a></li>
            <li class="mb-2"style="padding-bottom: 50px;"><a class="reset-anchor" href="#"></a></li>
          </ul>
        </div> 

        <!-- main for FAQ-->
        <div class="col-lg-8 order-1 order-lg-1 mb-5 mb-lg-0" style="margin: auto; padding-top: 10px; height: 100%;">
          <div class="page-header" style="margin-bottom: 50px; margin-left: 40px;">
            <h3>관리자에게 문의하기</h3>
          </div>
          <div class="col-lg-12" style="margin: auto; margin:20px;">
            <div class="col-mb-12">
              <label for="inquiryTitle" class="form-label" style="margin-left: 10px;"><h5>제목</h5></label>
              <input type="email" class="form-control" id="inquiryTitle" placeholder="제목을 입력하세요."  style="margin-left: 10px; margin-bottom: 30px;">
            </div>
            <div class="col-mb-12">
              <label for="inquiryText" class="form-label"  style="margin-left: 10px;"><h5>내용</h5></label>
              <textarea class="form-control" id="inquiryText" rows="3" placeholder="문의 내용을 입력하세요." style="margin-left: 10px; height: 300px; resize: none;"></textarea>
            </div>
            <div class="form-group row">
              <div class="col-sm-4" style="margin: auto; padding: 60px;">
                <button class="btn btn-primary" type="submit" onclick="location.href='t_inquiryList.html'">문의하기</button>
              </div>
            </div>
          </div>
        </div>
      </div>

      <footer class="bg-dark text-white">
        <div class="container py-4">
          <div class="row py-5">
            <div class="col-md-1 mb-3 mb-md-0">
              <h5 class="text-uppercase mb-3"><p> </p></h5>
            </div>
            <div class="col-md-2 mb-3 mb-md-0">
              <h3 class="text-uppercase mb-3"><a class="footer-link" href="#" style="font-size: 25px;">
                공지사항</a></h3>
            </div>
            <div class="col-md-2 mb-3 mb-md-0">
              <h3 class="text-uppercase mb-3"><a class="footer-link" href="#" style="font-size: 25px;">
                서비스 약관</a></h3>
            </div>
            <div class="col-md-2 mb-3 mb-md-0">
              <h3 class="text-uppercase mb-3"><a class="footer-link" href="#" style="font-size: 25px;">
                개인정보<br>처리약관</a></h3>
            </div>
            <div class="col-md-2 mb-3 mb-md-0">
              <h3 class="text-uppercase mb-3"><a class="footer-link" href="#" style="font-size: 25px;">
                자주 묻는<br>질문</a></h3>
            </div>
            <div class="col-md-2 mb-3 mb-md-0">
              <h3 class="text-uppercase mb-3"><a class="footer-link" href="#" style="font-size: 25px;">
                문의하기</a></h3>
            </div>
            <div class="col-md-1 mb-3 mb-md-0">
              <h3 class="text-uppercase mb-3"><p> </p></h3>
            </div>
          </div>
          <div class="border-top pt-4" style="border-color: #1d1d1d !important">
            <div class="row">
              <div class="col-lg-6">
                <p class="small text-muted mb-0">&copy; 2020 All rights reserved.</p>
              </div>
              <div class="col-lg-6 text-lg-right">
                <p class="small text-muted mb-0">Template designed by <a class="text-white reset-anchor" href="https://bootstraptemple.com/p/bootstrap-ecommerce">Bootstrap Temple</a></p>
              </div>
            </div>
          </div>
        </div>
      </footer>
      <!-- JavaScript files-->
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/jquery/jquery.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/lightbox2/js/lightbox.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/nouislider/nouislider.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2/owl.carousel.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
      <script src="${pageContext.servletContext.contextPath }/resources/teacher/js/front.js"></script>

      <!-- FontAwesome CSS - loading as last, so it doesn't block rendering-->
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    </div>
    
    <jsp:forward page="../commons/footer.jsp"/>
  </body>
</html>