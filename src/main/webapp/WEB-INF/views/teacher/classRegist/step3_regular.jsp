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
    <div class="container" style="width: 90%; margin :0 auto; display: none;" id="regular">
        <!-- ?????????????????????1-->
        <div class="row">
            <div class="col-md-2 step" >????????? ????????????</div>
            <div class="col-md-2 step" >????????? ??????</div>
            <div class="col-md-3 nowStep" >????????? ?????? ??? ??????</div>
            <div class="col-md-2 step">????????? ????????????</div>
            <div class="col-md-3 step">????????? ?????? ??? ????????????</div>
        </div>
        <br><br><br>
        <h6>????????? ??????</h6>
        <div style="font-size: 15px; opacity: .7">
          - ???????????? : ???????????? ?????? ????????? ????????? ????????? ??????<br>
          - ???????????? : ?????? ?????? ?????? ?????? ????????? ????????? ????????? ??????<br>
          - ???????????? : ????????? ???????????? ?????? ????????? ???????????? ??????<br>
          - ???????????? : ???????????? ?????? ???, ??? ?????? ?????? ????????? ???????????? ??????<br>
          (??????????????? ?????? ???????????? ?????? ?????????????????? ??????????????????)
        </div>
        <br><br>
        <div class="row" style="border: 1px solid rgba(0, 0, 0, 0.2); padding: 20px 20px 20px 20px;">
          <div class="col-md-1"></div>
          <div class="col-md-2">???????????????<br>
            <div class="btn1" align="center" style="padding-top: 7px">????????????</div>
          </div>
          <div class="col-md-3" >
            ??????????????????<br>
            <div class="form-inline">
              <div class="form-group">
                <select class="form-control" name="time">
					<option value = "01">1??????</option>
					<option value = "02">2??????</option>
					<option value = "03">3??????</option>
					<option value = "04">4??????</option>
					<option value = "05">5??????</option>
                </select>
                <select class="form-control" name="time">
					<option value = "00">00???</option>
					<option value = "10">10???</option>
					<option value = "20">20???</option>
					<option value = "30">30???</option>
					<option value = "40">40???</option>
					<option value = "50">50???</option>
                </select>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            ???????????? ???????????? ??????????????????<br>
            <input type="date" name="startDay" id="regularStart"> - 
            <input type="date" name="endDay" id="regularEnd">
          </div>
          <div class="col-md-1"></div>
          <div class="col-md-10" style="margin: 20px 0 20px 0px ; height: 350px; background-color: #f5f5f5;" id="regularList">???????????? ??????????????????.
          </div>
          <div class="col-md-1"></div>
          <div class="col-md-1"></div>
          <div class="col-md-3">
            <button id="dateTimeSetting"type="button" class="btn1 btn-primary" data-toggle="modal" data-target="#regularCourse" style="width: 250px;">??????/?????? ????????????</button>
          </div>
        </div>
        <!-- ?????????????????? ????????? -->
        <div id="regularCourse"class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="gridSystemModalLabel">???????????????</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              </div>
              <div class="modal-body">
                <div class="container">
                  <div class="container">
                    <h6>????????????</h6><br>
                    <p style="font-size: 15px;">??????????????? ????????? ???????????? ??????????????? ???????????????.</p>
                    <div style="border: 1px solid #f5f5f5; padding: 20px;">
                      <div style="background-color: #f5f5f5; padding: 20px; height: 90px;">
                        <!-- ????????????????????? -->
                        <div class="row">
                          <div class="col-md-4" style="font-size: 14px;">??????????????????</div>
                          <div class="col-md-3" style="font-size: 14px;">??????????????????</div>
                          <div class="col-md-3" style="font-size: 14px;">????????????</div>
                          <div class="col-md-2"></div>

                          <div class="col-md-4">
                              <div class="form-inline">
                                <select class="form-group" name="regularInputInfo" style="margin-right: 10px; width: 90px; font-size: 14px; height: 30px; text-align: center;">
									<option value="00">?????? 00???</option>
									<option value="01">?????? 01???</option>
									<option value="02">?????? 02???</option>
									<option value="03">?????? 03???</option>
									<option value="04">?????? 04???</option>
									<option value="05">?????? 05???</option>
									<option value="06">?????? 06???</option>
									<option value="07">?????? 07???</option>
									<option value="08">?????? 08???</option>
									<option value="09">?????? 09???</option>
									<option value="10">?????? 10???</option>
									<option value="11">?????? 11???</option>
									<option value="12">?????? 12???</option>
									<option value="13">?????? 01???</option>
									<option value="14">?????? 02???</option>
									<option value="15">?????? 03???</option>
									<option value="16">?????? 04???</option>
									<option value="17">?????? 05???</option>
									<option value="18">?????? 06???</option>
									<option value="19">?????? 07???</option>
									<option value="20">?????? 08???</option>
									<option value="21">?????? 09???</option>
									<option value="22">?????? 10???</option>
									<option value="23">?????? 11???</option>
                                </select>
                                 : 
                                <select class="form-group" name="regularInputInfo" style="margin-left: 10px; width: 90px; font-size: 14px; height: 30px; padding-left: 15px;" >
                                    <option value="00">00???</option>
	    							<option value="10">10???</option>
	    							<option value="20">20???</option>
	    							<option value="30">30???</option>
	    							<option value="40">40???</option>
	    							<option value="50">50???</option>
                                </select>
                              </div>
                          </div>
                          <div class="col-md-3" align="center">
                            <div class="form-inline">
                              <input name="regularInputInfo" type="number" style="margin-right: 10px; width: 60px; font-size: 14px; height: 30px; text-align: center;">
                              ~
                              <input name="regularInputInfo" type="number" style="margin-left: 10px; width: 60px; font-size: 14px; height: 30px; text-align: center;">
    
                            </div>
                          </div>
                          <div class="col-md-3 form-group" style="display: flex;">
                            <input type="number" name="regularInputInfo" class="form-inline" style="width: 50px; padding-left: 10px; margin-right: 10px; font-size: 14px;">
                            <div>???</div>
                          </div>
                          <div class="col-md-2"><button type="button" onclick="regularScheduleAdd();"class="addbtn">??????</button></div>
                        </div>
                        <br>
                        <!-- /????????????????????? -->       
                      </div>
                      <p style="margin-top: 15px;" >??????????????? ????????? ???????????? ??????????????? ????????????, ????????? ???????????? ????????? ???????????????.</p>
                    </div>
                    <div style="height: 200px;">
                      <table class="table">
                        <tbody style="text-align: center;" id="regularTable">
                          <tr style="background-color: #f5f5f5;">
                            <th style="width:35%;">????????????</th>
                            <th style="width:15%;">?????? ??????</th>
                            <th style="width:25%;">??????????????????</th>
                            <th style="width:15%;">????????????</th>
                            <th style="width:10%;">??????</th>
                          </tr>
                          <tr>
                            <td colspan="5">????????? ???????????? ????????????</td>
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
                <button type="button" class="btnBack btn-default" data-dismiss="modal">??????</button>
                <button type="button" class="btn1 btn-primary" data-dismiss="modal" onclick="regularRegist();" style="width:120px;">???????????????</button>
              </div>
            </div>
          </div>
        </div>
        <!-- /?????????????????? ????????? -->        
        <br><br><hr><br><br>
        <h6>???????????????<b> *</b></h6>
        <br>
            <div class="form-group">
              <input class="form-control" style="width:20%" type="number" placeholder="????????????(???)" name="price">
            </div>
            
            <br><br><hr><br>
   
            

            <div>

            </div>
            <button type="button" onclick="movePage(1)" class="btnBack btn-primary">??????</button>
            <button type="button" onclick="movePage(3)" class="btn1 btn-primary">??????</button>
      </div>
    <br>
    <br>
    <!-- //?????????????????????1-->
</body>

</html>