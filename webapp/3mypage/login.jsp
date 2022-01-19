<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="project_3rd_package.Dao.*"   
    import="project_3rd_package.vo.*"   
    %>
<!DOCTYPE html>
<html lang="en">
	<head>
	    <meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>MovieGo | 로그인</title>
	    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
	    <script src="https://kit.fontawesome.com/53a8c415f1.js" crossorigin="anonymous"></script>
	    <link rel = "stylesheet" type = "text/css" href = "./login.css">
	    <script type="text/javascript" src="../0jquery/jquery-3.6.0.js"></script>
	    <script type="text/javascript">
	    <%
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		// id가 null 아닐 때, 초기화면이 아니고, 아이디를 입력해서 로그인한 화면일 때,
		// DB 처리..
		System.out.println("id:"+id);
		// DB를 통해 login이 있는 상황인지 여부를 확인하기 위해 boolean 선언.
		String status = "init";
		if(id!=null){
			status = "login";
			// DB 처리를 할 수 있게 한다.
			Dao dao = new Dao();
			// 해당하는 데이터가 있으면 Member 객체 할당.
			Member m = dao.login(id, pass);
			if(m!=null){
				status = "success";
				// 세션을 로그인 성공시 활용할 수 있다.
				session.setAttribute("mem", m);
			}else{
				status = "fail";
			}
		}
		%>
		$(document).ready(function(){
			// java의 변수를 js로 처리하기..
			var status = "<%=status%>";
			if(status=="success"){
				alert("로그인 성공");
				location.href="../1main/MovieGo_main1/index.html";
			}
			if(status=="fail"){
				alert("로그인 실패\n다시 로그인 하세요!")
				$("[name=id]").focus();
			}
			
			$("#loginBtn").click(function(){
				var id = $("[name=id]").val();
				var pass = $("[name=pass]").val();
				if(id!="" && pass!=""){
					$("form").submit(); // form에 요청값을 처리..	
				}else{
					alert("아이디나 패스워드를 입력하세요");	
				}
			});
		});
	    </script>
	   
	     
	</head>
	<body>
		<form method="post">
			<div style="width:2500px;">
			    <div class="wrap">
				    <div class="login">
			            <a href="../1main/MovieGo_main1/index.html"><h2>MovieGo</h2></a>
			            <div class="login_sns">
				            <li><a href=""><i class="fab fa-instagram"></i></a></li>
				            <li><a href=""><i class="fab fa-facebook-f"></i></a></li>
				            <li><a href=""><i class="fab fa-twitter"></i></a></li>
			            </div>
			            <div class="login_id">
			                <h4>아이디</h4>
			                <input type="text" name="id" placeholder="아이디">
			            </div>
			            <div class="login_pw">
			                <h4>패스워드</h4>
			                <input type="password" name="pass" placeholder="패스워드">
			            </div>
			            <div class="login_etc">
			                <a href="">아이디 찾기</a>
			                </div>
			                <div class="forgot_pw">
			                <a href="">비밀번호 찾기</a>
			            </div>
			         
			            <div class="submit">
			                <input type="button" id="loginBtn" value="로그인">
			               
			            </div>
			            <div class="signup">
			            	<h4>무비고가 처음이신가요?</h4>
			            </div>
			            <div class="signupgo">
			            	<a href="signupgo.html">회원가입</a>
			            </div>
			        </div>
				    
			    </div>
		    </div>
		</form>
	</body>
</html>