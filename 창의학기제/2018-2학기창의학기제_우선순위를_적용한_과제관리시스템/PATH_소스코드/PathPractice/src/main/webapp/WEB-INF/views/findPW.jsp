<%@page language="java" contentType="text/html; cahrset=UTF-8"
	pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="kr">
<head>
<%
	if(session.getAttribute("id")==null)
		response.sendRedirect("/");
%>
   <title>find password</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<!-- Customize CSS -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style_changePW.css">

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
</head>

<body class="text-center">
	<!-- Container -->
	<div class="container m-0 p-0 justify-content-md-center justify-content-xs-center" id="content">
		<div class="login_box ">
			<h1 class="text-center wdi_red">PW</h1>
			<hr>
			<form>
				<div class="form-row">
					<div class="col-md-12 col-xs-12">
						<input type="text" id="id"
							class="form-control form-control-lg flat_input"
							placeholder="username">
					</div>
					<div class="col-md-6 col-xs-6 mt-3">
						<button type="button" class="btn btn-block btn-sm btn_submit"
							id="submit">FIND</button>
					</div>
					<div class="col-md-6 col-xs-6 mt-3">
						<button type="button" class="btn btn-block btn-sm btn_cancel"
							onclick='location.href="/"'>CANCEL</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<input type="hidden" id="email" name="hide" value="">
	<input type="hidden" id="to_pw" name="hide" value="">
</body>
</html>

<script type="text/javascript">
   $(document).ready(function(){
      $('#submit').on('click',function(){
         $.ajax({
            url:"/user/getUserPwdInfo.json",
            type : "GET",
            data : {'stuId':$('#id').val()},
            success : function(result){
               if(result['result'] === "no data"){
                  alert('회원정보가 없습니다.');
               }else{
                 $('#email').val(result['email']).trigger('change');
                 $('#to_pw').val(result['pw']).trigger('change');

                  $.ajax({
                    type:"post",
                    url : "content_me.php",
                    success : function(result){
                      if(result){
                        alert("메일이 전성 되었습니다.");
                      }
                      else{
                        alert("메일이 전송되지 않았습니다.");
                      }
                    },
                    error : function(){
                      alert("php에 접근하지 못하였습니다.");
                    }
                  });
               }
            },
            error : function(){
							alert('비밀번호 찾기 에러');
            }
         });
      });
   });
</script>