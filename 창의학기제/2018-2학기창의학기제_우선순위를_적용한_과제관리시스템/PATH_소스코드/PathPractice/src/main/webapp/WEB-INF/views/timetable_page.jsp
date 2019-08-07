<%@page language="java" contentType="text/html; cahrset=UTF-8"
	pageEncoding="UTF-8" %>
<!doctype html>
<html lang="kr">
<head>
<%
	if(session.getAttribute("id")==null)
		response.sendRedirect("/");
%>
	<title>timetable_page</title>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous"> 
	<!-- Customize CSS -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style_timetable_page.css">

	<!-- fontawesome img -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
</head>

<body class="text-center">
	<!-- Container -->
	<div class="container m-0 p-0 justify-content-md-center justify-content-xs-center">
		<div class="login_box ">
			<!-- header (상단바) class="app-header" -->
			<div id="header"></div>

			<!-- 상단바와 하단바를 제외한 부분 class="main-area" -->
			<div class="jumbotron p-md-0 m-0 main_area">
				<!-- + 버튼  -->
				<div class="row col-auto justify-content-end setting">
					<div class="col-10 col-xs-10 col-sm-10 col-lg-10 col-md-10"></div>
					<button id="plusTime" class="btn-lg btn_add p-0 mx-2" type="button"
						data-toggle="collapse" data-target="#collapseAdd"
						aria-label="Left Align" aria-expanded="false"
						aria-controls="collapseAdd">
						<span class="fas fa-plus-square"></span>
					</button>
				</div>

				<!-- +버튼 클릭시 추가 창 띄움-->
				<div id="collapseAdd"
					class="collapse p-0 md-1 col-12 col-xs-12 col-sm-12 col-lg-12 col-md-12">
					<div id="topbar" class="card card-body card_plus">
						<div class="list-group">

							<button id="addByDirectly" class="btn p-1 btn-sm list-group-item"
								type="button" data-toggle="collapse"
								data-target="#collapseDirect" aria-expanded="false"
								aria-controls="collapseDirect">직접 추가하기</button>
							<!-- <button id="addBySearching"
								class="btn p-1 btn-sm list-group-item" type="button"
								data-toggle="collapse" data-target="#collapseSearching"
								aria-expanded="false" aria-controls="collapseSearching"
								href="/find_subject">검색하기</button> -->
							<button type="button" id="btnUndo2"
								class="p-1 btn-sm list-group-item">취소하기</button>
						</div>

						<!-- 직접 추가하기 창 -->
						<div class="collapse mt-1 form-add" id="collapseDirect">
							<div class="card card-body card_directly p-2">
								<form class="commonForm">
									<div class="form-group m-0">
										<label for="subjectName" class="col-12 label_input">과목명</label>
										<input type="text" class="col-10 m-0 form-control input" title="과목명"
											id="subjectName" style="display:inline-block;">
										<a class="btn btn-sm btn_icon" aria-label="Left Align" id="search"> 
											<span class="fas fa-search"></span>
										</a>
									</div>
									<div class="form-group m-0">
										<label for="professorName" class="col-12 label_input">교수명</label>
										<input type="text" class="form-control input" title="교수명"
											id="professorName">
									</div>
									<div class="form-group m-0">
										<label for="time" class="col-12 label_input">시간</label>
										<div id="time" class="col-12 form-row">
											<label class="mx-auto time_label">요일</label>
											<div class="mx-auto">
												<select id="day1" class="form-control-xs">
													<option value="">요일</option>
													<option value="월">월</option>
													<option value="화">화</option>
													<option value="수">수</option>
													<option value="목">목</option>
													<option value="금">금</option>
												</select>
												 <select id="day2" class="form-control-xs">
													<option value="">요일</option>
													<option value="월">월</option>
													<option value="화">화</option>
													<option value="수">수</option>
													<option value="목">목</option>
													<option value="금">금</option>
												</select>
											</div>
											<label class="mx-auto time_label">시작시간</label>
											<div class="mx-auto">
												<select id="sHour" class="form-control-xs">
													<option value="">시</option>
													<option value="09">09</option>
													<option value="10">10</option>
													<option value="11">11</option>
													<option value="12">12</option>
													<option value="13">13</option>
													<option value="14">14</option>
													<option value="15">15</option>
													<option value="16">16</option>
													<option value="17">17</option>
													<option value="18">18</option>
												</select> 
												<select id="sMinute" class="form-control-xs">
													<option value="">분</option>
													<option value="00">00</option>
													<option value="30">30</option>
												</select>
											</div>
											<label class="mx-auto time_label">종료시간</label>
											<div class="mx-auto">
												<select id="eHour" class="form-control-xs">
													<option value="">시</option>
													<option value="09">09</option>
													<option value="10">10</option>
													<option value="11">11</option>
													<option value="12">12</option>
													<option value="13">13</option>
													<option value="14">14</option>
													<option value="15">15</option>
													<option value="16">16</option>
													<option value="17">17</option>
													<option value="18">18</option>
												</select> <select id="eMinute" class="form-control-xs">
													<option value="">분</option>
													<option value="00">00</option>
													<option value="30">30</option>
												</select>
											</div>
										</div>
									</div>
									<div class="form-group m-0">
										<label for="place" class="col-12 label_input">장소</label> <input
											type="text" class="form-control input" title="장소" id="place">
									</div>
								</form>
								<div class="form-row mx-auto btn_submit">
									<button type="button" id="btnSuccess"
										class="mx-auto col-5 btn btn-sm btn_add_sub">추가</button>
									<button type="button" id="btnUndo1"
										class="mx-auto col-5 btn btn-sm btn_add_sub">취소</button>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div id="timetable"></div>
			</div>
			<!-- footer 하단바 class="app-footer" -->
			<div id="footer"></div>
		</div>
		<input type="hidden" id="hiddenSubKey" name="hide" value="" >
	</body>
</html>
<script src="${pageContext.request.contextPath}/resources/js/common/header.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/common/timetable.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/common/footer.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/common/func_check_input.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/common/func_cookie.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/common/func_timetable.js"></script>

<!-- 취소하기 버튼 클릭 시 다시 창 닫기 -->
<script type="text/javascript">
	$('#btnUndo2').on('click', function () {
		$('#plusTime').trigger('click');
		$('#collapseDirect').collapse('hide');
	});
	$('#plusTime').on('click', function () {
		$('#collapseDirect').collapse('hide');
		$('#collapseAdd').collapse('hide');
		
	});
	$('#btnUndo1').on('click', function () {
		$('#addByDirectly').trigger('click');
	});
	$('#subjectName').on('click', function () {
		$('#search').trigger('click');
	}); 

</script>

<script type="text/javascript">
	var userInputId = getCookie("userInputId");
	console.log(userInputId);
	<%
	System.out.println("timetable session : " + session.getAttribute("id"));
	%>
</script>

<script type="text/javascript">
$('#search').on('click', function() {
		location.href="/find_subject?&page=timetablePage";
	});
</script>

<!--시간표 추가 -->
<script>
	var subNo = '${subNo}'; 

 	if(subNo == 0){
		subNo = 111111//?? 직접 추가할 때 subNo어떻게 하는지 물어보기//직접추가하면 교수명 과목명 시작시간 종료시간 장소 모두 입력받은걸로 찾아와서 색칠
	}
	$.ajax({
			url:"/subject/searchSubject.json",
			type : "GET",
			data : {
				'word':subNo, //subNO로 subjectKey랑 과목 정보들 가져오기 //find_subject해서 url parameter로 가져옴
				'select':1
			},
			success : function(result){
       		if(result['result'] === "no data"){ 
       			alert('없는 과목입니다.');
       		}else{
					console.log(result);
					
					subName = result['result'][0]['subName'];
					classroom = result['result'][0]['classroom'];
					profName = result['result'][0]['profName'];
					subjectKey = result['result'][0]['subjectKey'];
					startHour = result['result'][0]['startHour'];
					endHour = result['result'][0]['endHour'];
					day = result['result'][0]['day'];
					
					if(day != null){
						day1 = day.slice(0,1);
						day2 = day.slice(1,2);	
						shour = startHour.slice(0,2);//앞에2개 자르기
						sminute = startHour.slice(3,5);
						ehour = endHour.slice(0,2);
						eminute = endHour.slice(3,5);
					}
					else{
						day1 = day2 = null;
						shour = sminute = ehour = eminute = null;
						alert("사이버 강의 입니다. 요일과 장소,시간을 직접 등록 해 주세요. ");
						//싸강도 할꺼야???
					}

					context = subName.concat(" ",classroom);
					$('#hiddenSubKey').val(subjectKey).trigger('change');
					
					$('#plusTime').trigger('click');
					$('#addByDirectly').trigger('click');
					
					$("#subjectName").val(subName);
					$("#place").val(classroom);
					$("#professorName").val(profName);
					$("#day1").val(day1);
					$("#day2").val(day2);
					$("#sHour").val(shour);
					$("#sMinute").val(sminute);
					$("#eHour").val(ehour);
					$("#eMinute").val(eminute);
       		}
     	},
     	error : function(request,status,error){
    		alert('검색 에러');
    		console.log("code:"+request.status+'\n'+'message:'+request.responseText+'\n'+'error:'+error);
    	}
	});
	
	$('#btnSuccess').on('click', function () {
		if( !chkInput() ) return; 
		
		//FUNCTION
		insertTimetable( $('#hiddenSubKey').val() );//parameter로 subjectKey //hidden으로 기억
		
		// select box value init
		$('select').find("option:eq(0)").prop("selected", true);
		$('#addByDirectly').trigger('click');
		$('#plusTime').trigger('click');
				
		$('.commonForm input[type="text"]').val(""); 
		
		
	});
</script>

<!-- 테이블 클릭 시 수정할 수 있게 -->
<!-- <script>
	var table = document.getElementById("table"),rIndex,cIndex;

		$('#').on('click', function (){
		for(var i = 1 ; i < table.rows.length ; i++){				
			for(var j = 1 ; j<table.rows[i].cells.length ; j++){
				table.rows[i].cells[j].onclick = function(){
					rIndex = this.parentElement.rowIndex;
					cIndex = this.cellIndex;
					console.log("ROW:" +rIndex+ ", Cell:" +cIndex);
				}
			}
		}	
	});
</script> -->
 
<script>
	//subjectKey 로 시간표 db에 등록
	function insertTimetable(subjectKey){
		<% String id = (String) session.getAttribute("id"); %>
		$.ajax({
			url : "/timeTable/insertTimeTable.json",
			type : "GET",
			data : {
				'stuId' : <%=id%>,
				'subjectKey' : subjectKey
			},success : function(result) {
				console.log(result);
				if (result['result'] === '1') {
					alert('시간표등록성공');
					
					//FUNCTION
					displayTimetable(shour,sminute,ehour,eminute,day1,day2,context);//parameter로 시작 시간,종료시간,요일
					//동적으로 table 합치기!!!!!!!!!!!!!!!!!!!!!!
					
					//나중에 이건 불러오기 할때 그쪽에도 추가해야 함
					for(var i=1 ; i<=5 ; i++){
	 					$(".content"+i).each(function() {
							var text = $(this).text();
							var cnt=0;
							console.log("내용="+text);
							if( text != '#'){
								var rows = $(".content"+i+":contains('" + text + "')"); //subjectKey로 판별할 수 있게 바꾸기
								console.log( text,rows.length);
								//행열 찍어보기
								if (rows.length > 1) {
									rows.eq(0).attr("rowspan", rows.length);
									rows.not(":eq(0)").remove();
									console.log( "ater: "+rows.length);
								}
				 				cnt++;
							}
			 				console.log("cnt=",cnt);
						});//요일 두개인 과목에는 이상해!! 
					}
			
				} else {
					alert('시간표등록실패');
				}
			},error : function() {
				alert('시간표등록에러');
			}
		});
	}
</script>

<!-- 처음페이지 시작, 추가 수정 삭제시 시간표 정보들 모두 불러오기 -->
<!-- 시작할때 시간표 불러오기 -->
<script>
	//subjectKey 로 시간표 db에 등록
	$(document).ready(function(){
		$.ajax({
			url : "/timeTable/searchTimeTable.json",
			type : "GET",
			data : {
				'stuId' : <%=id%>
			},success : function(result) {
				if (result['result'] === "no data") {
					alert('등록된 시간표가 없습니다.');				
				} else {
					alert('시간표 불러오기 성공');
					console.log(result);
					
					for (var i = 0; i < result['result'].length; i++) {
						var subjectKey = result['result'][i]['subjectKey'];
						console.log("sub = ",subjectKey);
						//subject 키로 과목정보들 찾아와서 색칠하기
						findSubjectInfo(subjectKey);
					}
				}
			},error : function() {
				alert('시간표 불러오기 에러');
			}
		});
	});
</script>